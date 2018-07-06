package org.buzheng.demo.esm.dao;

import java.util.List;

import org.buzheng.demo.esm.domain.SysMenu;

public interface SysMenuDao {
	
	List<SysMenu> findAll();
	
	void save(SysMenu menu);
	
	void update(SysMenu menu);
	
	void delete(String menuId);
	
	List<SysMenu> findByChildId(List<String> menuId);
}
