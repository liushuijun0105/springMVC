package org.buzheng.demo.esm.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.buzheng.demo.esm.domain.SysMenu;
import org.buzheng.demo.esm.service.SysMenuService;
import org.buzheng.demo.esm.web.util.Result;
import org.buzheng.demo.esm.web.util.WebFrontHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/sys/menu")
public class SysMenuController extends BaseController {

	@Resource
	private SysMenuService sysMenuService;

	@RequestMapping("/list")
	@ResponseBody
	public List<SysMenu> list() {
		SysMenu menu = WebFrontHelper.buildMenuTree(this.sysMenuService.findAll());		
		return menu.getChildren();
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public Result add(SysMenu menu) {
		this.sysMenuService.save(menu);
		return new Result();
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public Result update(SysMenu menu) {
		this.sysMenuService.update(menu);
		return new Result();
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public Result delete(@RequestParam(value="menuId", required=true) String menuId) {
		this.sysMenuService.delete(menuId);
		return new Result();
	}

}
