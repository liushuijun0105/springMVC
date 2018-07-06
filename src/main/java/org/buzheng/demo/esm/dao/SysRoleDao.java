package org.buzheng.demo.esm.dao;

import java.util.List;

import org.buzheng.demo.esm.domain.SysRole;

public interface SysRoleDao {
	
	List<SysRole> findAll();
	
	void save(SysRole role);
	
	void update(SysRole role);
	
	void delete(String roleId);
	
}
