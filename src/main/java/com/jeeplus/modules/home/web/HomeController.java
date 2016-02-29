/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.home.web;

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
import com.jeeplus.modules.home.entity.Home;
import com.jeeplus.modules.home.service.HomeService;

/**
 * 家庭Controller
 * @author zx
 * @version 2016-02-28
 */
@Controller
@RequestMapping(value = "${adminPath}/home/home")
public class HomeController extends BaseController {

	@Autowired
	private HomeService homeService;
	
	@ModelAttribute
	public Home get(@RequestParam(required=false) String id) {
		Home entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = homeService.get(id);
		}
		if (entity == null){
			entity = new Home();
		}
		return entity;
	}
	
	/**
	 * 家庭列表页面
	 */
	@RequiresPermissions("home:home:list")
	@RequestMapping(value = {"list", ""})
	public String list(Home home, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Home> page = homeService.findPage(new Page<Home>(request, response), home); 
		model.addAttribute("page", page);
		return "modules/home/homeList";
	}

	/**
	 * 查看，增加，编辑家庭表单页面
	 */
	@RequiresPermissions(value={"home:home:view","home:home:add","home:home:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(Home home, Model model) {
		model.addAttribute("home", home);
		return "modules/home/homeForm";
	}

	/**
	 * 保存家庭
	 */
	@RequiresPermissions(value={"home:home:add","home:home:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(Home home, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, home)){
			return form(home, model);
		}
		homeService.save(home);
		addMessage(redirectAttributes, "保存家庭成功");
		return "redirect:"+Global.getAdminPath()+"/home/home/?repage";
	}
	
	/**
	 * 删除家庭
	 */
	@RequiresPermissions("home:home:del")
	@RequestMapping(value = "delete")
	public String delete(Home home, RedirectAttributes redirectAttributes) {
		homeService.delete(home);
		addMessage(redirectAttributes, "删除家庭成功");
		return "redirect:"+Global.getAdminPath()+"/home/home/?repage";
	}
	
	/**
	 * 批量删除家庭
	 */
	@RequiresPermissions("home:home:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			homeService.delete(homeService.get(id));
		}
		addMessage(redirectAttributes, "删除家庭成功");
		return "redirect:"+Global.getAdminPath()+"/home/home/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("home:home:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Home home, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "家庭"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Home> page = homeService.findPage(new Page<Home>(request, response, -1), home);
    		new ExportExcel("家庭", Home.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出家庭记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/home/home/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("home:home:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<Home> list = ei.getDataList(Home.class);
			for (Home home : list){
				homeService.save(home);
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条家庭记录");
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入家庭失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/home/home/?repage";
    }
	
	/**
	 * 下载导入家庭数据模板
	 */
	@RequiresPermissions("home:home:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "家庭数据导入模板.xlsx";
    		List<Home> list = Lists.newArrayList(); 
    		new ExportExcel("家庭数据", Home.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/home/home/?repage";
    }
	

}