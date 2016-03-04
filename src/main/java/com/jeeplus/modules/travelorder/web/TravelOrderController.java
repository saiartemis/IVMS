/**
 * Copyright &copy; 2015-2020 <a href="--版权信息--">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.travelorder.web;

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
import com.jeeplus.modules.car.entity.Car;
import com.jeeplus.modules.car.service.CarService;
import com.jeeplus.modules.sys.entity.User;
import com.jeeplus.modules.sys.utils.UserUtils;
import com.jeeplus.modules.travelorder.entity.TravelOrder;
import com.jeeplus.modules.travelorder.service.TravelOrderService;

/**
 * 旅行单管理Controller
 * @author zhangxian
 * @version 2016-03-01
 */
@Controller
@RequestMapping(value = "${adminPath}/travelorder/travelOrder")
public class TravelOrderController extends BaseController {

	@Autowired
	private TravelOrderService travelOrderService;
	
	@Autowired
	private CarService carService;
	@ModelAttribute
	public TravelOrder get(@RequestParam(required=false) String id) {
		TravelOrder entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = travelOrderService.get(id);
		}
		if (entity == null){
			entity = new TravelOrder();
		}
		return entity;
	}
	
	/**
	 * 旅行单列表页面
	 */
	@RequiresPermissions("travelorder:travelOrder:list")
	@RequestMapping(value = {"list", ""})
	public String list(TravelOrder travelOrder, HttpServletRequest request, HttpServletResponse response, Model model) {
		travelOrder.setUser(UserUtils.getUser());
		Page<TravelOrder> page = travelOrderService.findPage(new Page<TravelOrder>(request, response), travelOrder); 
		model.addAttribute("page", page);
		return "modules/travelorder/travelOrderList";
	}

	/**
	 * 查看，增加，编辑旅行单表单页面
	 */
	@RequiresPermissions(value={"travelorder:travelOrder:view","travelorder:travelOrder:add","travelorder:travelOrder:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(TravelOrder travelOrder, Model model) {
		User user = UserUtils.getUser();
		List<Car> carList = carService.getFreeCarList(user);
		model.addAttribute("travelOrder", travelOrder);
		model.addAttribute("carList", carList);
		return "modules/travelorder/travelOrderForm";
	}

	/**
	 * 保存旅行单
	 */
	@RequiresPermissions(value={"travelorder:travelOrder:add","travelorder:travelOrder:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(TravelOrder travelOrder, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, travelOrder)){
			return form(travelOrder, model);
		}
		travelOrder.setUser(UserUtils.getUser());
		//更新car对象数据
		if(travelOrder.getStatus().equals(TravelOrder.STATUS_ON_ROAD))
		{
			travelOrderService.save(travelOrder);
			Car car = carService.get(travelOrder.getCar().getId());
			car.setTravelOrder(travelOrder);
			car.setStatus(Car.STATUS_ON_ROAD);
			carService.update(car);
		}
		else if(travelOrder.getStatus().equals(TravelOrder.STATUS_FREE))
		{
			travelOrderService.save(travelOrder);
			Car car = carService.get(travelOrder.getCar().getId());
			car.setTravelOrder(null);
			car.setStatus(Car.STATUS_FREE);
			carService.update(car);
		}
		addMessage(redirectAttributes, "保存旅行单成功");
		return "redirect:"+Global.getAdminPath()+"/travelorder/travelOrder/?repage";
	}
	
	/**
	 * 删除旅行单
	 */
	@RequiresPermissions("travelorder:travelOrder:del")
	@RequestMapping(value = "delete")
	public String delete(TravelOrder travelOrder, RedirectAttributes redirectAttributes) {
		if(travelOrder.getStatus().equals(TravelOrder.STATUS_ON_ROAD))
		{
			addMessage(redirectAttributes, "删除失败!在途订单完成后才能删除");
			return "redirect:"+Global.getAdminPath()+"/travelorder/travelOrder/?repage";
		}
		else {
			travelOrderService.delete(travelOrder);
			addMessage(redirectAttributes, "删除旅行单成功");
			return "redirect:"+Global.getAdminPath()+"/travelorder/travelOrder/?repage";
		}
		
	}
	
	/**
	 * 批量删除旅行单
	 */
	@RequiresPermissions("travelorder:travelOrder:del")
	@RequestMapping(value = "deleteAll")
	public String deleteAll(String ids, RedirectAttributes redirectAttributes) {
		String idArray[] =ids.split(",");
		for(String id : idArray){
			travelOrderService.delete(travelOrderService.get(id));
		}
		addMessage(redirectAttributes, "删除旅行单成功");
		return "redirect:"+Global.getAdminPath()+"/travelorder/travelOrder/?repage";
	}
	
	/**
	 * 导出excel文件
	 */
	@RequiresPermissions("travelorder:travelOrder:export")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(TravelOrder travelOrder, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "旅行单"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<TravelOrder> page = travelOrderService.findPage(new Page<TravelOrder>(request, response, -1), travelOrder);
    		new ExportExcel("旅行单", TravelOrder.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出旅行单记录失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/travelorder/travelOrder/?repage";
    }

	/**
	 * 导入Excel数据

	 */
	@RequiresPermissions("travelorder:travelOrder:import")
    @RequestMapping(value = "import", method=RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
		try {
			int successNum = 0;
			ImportExcel ei = new ImportExcel(file, 1, 0);
			List<TravelOrder> list = ei.getDataList(TravelOrder.class);
			for (TravelOrder travelOrder : list){
				travelOrderService.save(travelOrder);
			}
			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条旅行单记录");
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入旅行单失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/travelorder/travelOrder/?repage";
    }
	
	/**
	 * 下载导入旅行单数据模板
	 */
	@RequiresPermissions("travelorder:travelOrder:import")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "旅行单数据导入模板.xlsx";
    		List<TravelOrder> list = Lists.newArrayList(); 
    		new ExportExcel("旅行单数据", TravelOrder.class, 1).setDataList(list).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
		}
		return "redirect:"+Global.getAdminPath()+"/travelorder/travelOrder/?repage";
    }
	

}