package com.dogdog.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
}
