package com.krithika.projectone.bridge.controller;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.krithika.projectone.bridge.common.BridgeOneCache;
import com.krithika.projectone.bridge.model.Acceptor;

@Controller
@RequestMapping("/")
public class DeciderController {
	@RequestMapping(value = "decider.htm", method = RequestMethod.POST)
	ModelAndView add(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String type = request.getParameter("type");
		String view;
		if ("acceptor".equals(type)) {
			view = "acceptor";
			return new ModelAndView(view);
		} 
			view = "donor";
			List<Acceptor> acceptors= new LinkedList<>();
			Iterator<Acceptor> itr = getRequestsPresent().iterator();
			while(itr.hasNext()) {
				//Acceptor acceptor = 
						acceptors.add(itr.next());
			}
			return new ModelAndView(view, "acceptors", acceptors);
	}

	private Collection<Acceptor> getRequestsPresent() {
		Map<Integer, Acceptor> acceptorMap = BridgeOneCache.getAcceptorMap();
		Collection<Acceptor> acceptorList = acceptorMap.values();
		return acceptorList;
	}
}
