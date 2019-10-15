package com.songpeng.sparchetype.common.util;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;

public class HttpServletUtils {

	/**
	 * 判断请求是否是 ajax 请求
	 *
	 * @param req
	 * @return
	 */
	public static boolean isAjax(HttpServletRequest req) {
		//判断是否为ajax请求，默认不是
		boolean isAjaxRequest = false;
		if (!StringUtils.isBlank(req.getHeader("x-requested-with")) && req.getHeader("x-requested-with").equals("XMLHttpRequest")) {
			isAjaxRequest = true;
		}
		return isAjaxRequest;
	}
}
