/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.bill.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.jeeplus.common.utils.DateUtils;
import com.jeeplus.common.config.Global;
import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.utils.excel.ExportExcel;
import com.jeeplus.common.utils.excel.ImportExcel;
import com.jeeplus.modules.bill.entity.Bill;
import com.jeeplus.modules.bill.service.BillService;

/**
 * 账单模块Controller
 * @author zhangxian
 * @version 2016-03-06
 */
@Controller
@RequestMapping(value = "${adminPath}/bill/bill")
public class BillController extends BaseController {

	@Autowired
	private BillService billService;
	
	@ModelAttribute
	public Bill get(@RequestParam(required=false) String id) {
		Bill entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = billService.get(id);
		}
		if (entity == null){
			entity = new Bill();
		}
		return entity;
	}
	
	/**
	 * 账单列表页面
	 */
	@RequiresPermissions("bill:bill:list")
	@RequestMapping(value = {"list", ""})
	public String list(Bill bill, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Bill> page = billService.findPage(new Page<Bill>(request, response), bill); 
		model.addAttribute("page", page);
		return "modules/bill/billList";
	}

	/**
	 * 查看，增加，编辑账单表单页面
	 */
	@RequiresPermissions(value={"bill:bill:view","bill:bill:add","bill:bill:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Bill bill, Model model) {
		model.addAttribute("bill", bill);
		return "modules/bill/billForm";
	}

	/**
	 * 保存账单
	 */
	@RequiresPermissions(value={"bill:bill:add","bill:bill:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Bill bill, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, bill)){
			return form(bill, model);
		}
		billService.save(bill);
		addMessage(redirectAttributes, "保存账单成功");
		return "redirect:"+Global.getAdminPath()+"/bill/bill/?repage";
	}
	
	/**
	 * 删除账单
	 */
	@RequiresPermissions("bill:bill:del")
	@RequestMapping(value = "delete")
	public String delete(Bill bill, RedirectAttributes redirectAttributes) {
		billService.delete(bill);
		addMessage(redirectAttributes, "删除账单成功");
		return "redirect:"+Global.getAdminPath()+"/bill/bill/?repage";
	}
	
	/**
	 * 批量删除账单
	 */
	@RequiresPermissions("bill:bill:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			billService.delete(billService.get(id));
		}
		addMessage(redirectAttributes, "删除账单成功");
		return "redirect:"+Global.getAdminPath()+"/bill/bill/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("bill:bill:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Bill bill, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "账单"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Bill> page = billService.findPage(new Page<Bill>(request, response, -1), bill);
    		new ExportExcel("账单", Bill.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出账单记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/bill/bill/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("bill:bill:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Bill> list = ei.getDataList(Bill.class);
			for (Bill bill : list){
				billService.save(bill);
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条账单记录");
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入账单失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/bill/bill/?repage";
    }
	
	/**
	 * 下载导入账单数据模板
	 */
	@RequiresPermissions("bill:bill:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "账单数据导入模板.xlsx";
    		List<Bill> list = Lists.newArrayList(); 
    		new ExportExcel("账单数据", Bill.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/bill/bill/?repage";
    }
	

}