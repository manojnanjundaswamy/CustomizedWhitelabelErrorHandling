package com.demo.CustomizedWhitelabelErrorPage.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpStatus;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Controller used to render errors based on the response status code.
 * @author MANOJ NANJUNDASWAMY
 * @since 28-04-2022
 */
@Controller
public class MyErrorController implements ErrorController{
	

	private static final String ERROR_REQ_PATH = "/error";
	private static final String VIEWPATH = "error/";
	private static final String MODELSIMPLEMESSAGE = "simpleMessage";
	private static final String MODELDETAILEDMESSAGE = "detailedMessage";

	private static final String ERROR400 = "Bad Request";
	private static final String ERROR401 = "Page is Unauthorized";
	private static final String ERROR403 = "Page is Forbidden";
	private static final String ERROR404 = "Page not found";
	private static final String ERROR405 = "Method not allowed";
	private static final String ERROR409 = "Conflict";
	private static final String ERROR500 = "Internal Server Error";
	private static final String ERROR501 = "Page Not Implemented";
	private static final String ERROR502 = "Bad Gateway";
	private static final String ERROR503 = "Service Unavailable";
	private static final String ERROR504 = "Gateway Timeout";

	private static final String ERRMSG400 = "The Request you have provided is bad";
	private static final String ERRMSG401 = "you are Unauthorized for this resource";
	private static final String ERRMSG403 = "access is Forbidden for this request";
	private static final String ERRMSG404 = "but the page you requested was not found";
	private static final String ERRMSG405 = "but the requested method was not allowed";
	private static final String ERRMSG409 = "but the page you requested is Conflicted";
	private static final String ERRMSG500 = "but Internal Server Error occurred";
	private static final String ERRMSG501 = "but the page you requested is not been Implemented";
	private static final String ERRMSG502 = "the requested Gateway is bad";
	private static final String ERRMSG503 = "the service you have requested is Unavailable";
	private static final String ERRMSG504 = "The Requesting Gateway Timed out";

	@GetMapping(ERROR_REQ_PATH)
	public String handleError(HttpServletRequest request, Model theModel) {
		Object statusObj = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
		String status = statusObj.toString();

		if (status != null) {

			Integer statusCode = Integer.valueOf(status);

			theModel.addAttribute("statusCode", status);

			if (statusCode == HttpStatus.SC_NOT_FOUND) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR404);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG404);

			} else if (statusCode == HttpStatus.SC_BAD_REQUEST) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR400);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG400);

			} else if (statusCode == HttpStatus.SC_UNAUTHORIZED) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR401);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG401);

			} else if (statusCode == HttpStatus.SC_FORBIDDEN) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR403);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG403);

			} else if (statusCode == HttpStatus.SC_METHOD_NOT_ALLOWED) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR405);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG405);

			} else if (statusCode == HttpStatus.SC_CONFLICT) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR409);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG409);

			} else if (statusCode == HttpStatus.SC_INTERNAL_SERVER_ERROR) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR500);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG500);

			} else if (statusCode == HttpStatus.SC_NOT_IMPLEMENTED) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR501);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG501);

			} else if (statusCode == HttpStatus.SC_BAD_GATEWAY) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR502);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG502);

			} else if (statusCode == HttpStatus.SC_SERVICE_UNAVAILABLE) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR503);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG503);

			} else if (statusCode == HttpStatus.SC_GATEWAY_TIMEOUT) {
				theModel.addAttribute(MODELSIMPLEMESSAGE, ERROR504);
				theModel.addAttribute(MODELDETAILEDMESSAGE, ERRMSG504);

			}
			return VIEWPATH + "error-page";
		}
		return VIEWPATH + "error-page";

	}
}
