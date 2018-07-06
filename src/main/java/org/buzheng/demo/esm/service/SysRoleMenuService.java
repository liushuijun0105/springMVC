package org.buzheng.demo.esm.service;

import java.util.List;

import org.buzheng.demo.esm.domain.SysRoleMenu;

public interface SysRoleMenuService {
	
	void save(SysRoleMenu srm);
	
	void save(String roleId, String menuId);
	
	void save(String roleId, String[] menuIds);
	
	List<String> findMenuIdsByRoleId(String roleId);
	
}
