package org.buzheng.demo.esm.impl;

import java.util.List;

import javax.annotation.Resource;

import org.buzheng.demo.esm.dao.SysGroupDao;
import org.buzheng.demo.esm.domain.SysGroup;
import org.buzheng.demo.esm.service.DataExistsException;
import org.buzheng.demo.esm.service.SysGroupService;
import org.springframework.stereotype.Service;

@Service
public class SysGroupServiceImpl implements SysGroupService {

	@Resource
	private SysGroupDao sysGroupDao;
	
	@Override
	public void save(SysGroup group) throws DataExistsException {
		if (group.getGroupName() == null || "".equals(group.getGroupName())) {
			throw new IllegalArgumentException("group.name.required");
		}
		
		if (group.getGroupNo() == null || group.getGroupNo().isEmpty()) {
			throw new IllegalArgumentException("group.no.required");
		}
		
		SysGroup g = this.sysGroupDao.findByGroupName(group.getGroupName());
		
		if (g != null) {
			throw new DataExistsException("group.name.exists");
		}
		
		this.sysGroupDao.save(group);
	}

	@Override
	public void update(SysGroup group) {
		if (group == null) 
			return;
		
		if (group.getGroupName() == null || group.getGroupName().isEmpty()) {
			throw new IllegalArgumentException("group.name.required");
		}
		
		this.sysGroupDao.update(group);
	}

	@Override
	public void delete(String groupId) {
		this.sysGroupDao.delete(groupId);;
	}

	@Override
	public List<SysGroup> findAll() {
		return this.sysGroupDao.findAll();
	}

	@Override
	public SysGroup findById(String groupId) {
		return this.sysGroupDao.findById(groupId);
	}

}
