package org.buzheng.demo.esm.dao;

import java.util.List;

import org.buzheng.demo.esm.domain.SysGroup;

public interface SysGroupDao {
	
	void save(SysGroup group);
	
	void delete(String groupId);
	
	void update(SysGroup group);
	
	List<SysGroup> findAll();
	
	SysGroup findById(String groupId);
	
	SysGroup findByGroupName(String groupName);
	
}
