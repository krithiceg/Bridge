package com.krithika.projectone.bridge.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.krithika.projectone.bridge.common.BridgeOneCache;
import com.krithika.projectone.bridge.model.Acceptor;

@Controller
@RequestMapping("/acceptor")
public class AcceptorController {
	@RequestMapping(value = "/addDetails.htm", method = RequestMethod.POST)
	ModelAndView add(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		Acceptor acceptor = new Acceptor();
		
		
		String name = request.getParameter("name");
		String reason = request.getParameter("reason");
		String amount = request.getParameter("amount");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String description = request.getParameter("description");
		
		acceptor.setName(name);
		acceptor.setReason(reason);
		acceptor.setReason(amount);
		acceptor.setEmail(email);
		acceptor.setPhone(phone);
		acceptor.setDescription(description);
		
		BridgeOneCache.addAcceptor(acceptor);
		System.out.println(BridgeOneCache.getAcceptorMap().entrySet());
		
		return new ModelAndView("acceptorAddedSuccessfully", "acceptor", acceptor);
	}
	
}
