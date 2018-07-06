package org.buzheng.demo.esm.dao;

import java.util.List;

import org.buzheng.demo.esm.domain.SysRoleMenu;

public interface SysRoleMenuDao {
	
	void save(SysRoleMenu srm);
	
	void deleteByRoleId(String roleId);
	
	List<String> findMenuIdByRoleId(String roleId);
	
	void deleteByMenuId(String menuId);
}
