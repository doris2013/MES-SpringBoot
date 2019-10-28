package com.songpeng.sparchetype.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.songpeng.sparchetype.system.dto.SysUserDto;
import com.songpeng.sparchetype.system.entity.SysUser;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author SongPeng
 * @since 2019-10-15
 */
public interface SysUserMapper extends BaseMapper<SysUser> {

	SysUserDto getUserAndRoleByUsername(String username) throws Exception;
}