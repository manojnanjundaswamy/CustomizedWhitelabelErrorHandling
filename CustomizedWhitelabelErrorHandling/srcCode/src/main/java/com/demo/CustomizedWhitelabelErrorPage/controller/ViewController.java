package com.demo.CustomizedWhitelabelErrorPage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Generic controller
 * @author MANOJ NANJUNDASWAMY
 * @since 28-04-2022
 */
@Controller
public class ViewController {

	/**
	 * Method to return landing/welcome page
	 * @return landing page
	 */
	@GetMapping("/")
	public String showDemoPage() {
		return "welcome";
	}
	
	/**
	 * Method to illustrate corresponding error for the errorCode
	 * @throws IOException 
	 */
	@GetMapping("/getError/{errorCode}")
	@ResponseBody
	public void throwAppropriateError(HttpServletResponse response, @PathVariable String errorCode) throws IOException {

		switch (errorCode) {
			case "400":
				response.sendError(400, "bad request");
				 break;
			case "401":
				response.sendError(401, "Page is Unauthorized");
				 break;
			case "403":
				response.sendError(403, "Page is Forbidden");
				break;
			case "404":
				response.sendError(404, "Page not found");
				break;
			case "405":
				response.sendError(405, "Method not allowed");
				break;
			case "500":
				response.sendError(500, "Internal Server Error");
				break;
			case "502":
				response.sendError(502, "Bad Gateway");
				break;
			case "503":
				response.sendError(503, "Service Unavailable");
				break;
			case "504":
				response.sendError(504, "Gateway Timeout");
				break;
		}
	}
}
