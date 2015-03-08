package com.krithika.projectone.bridge.common;

import java.util.HashMap;
import java.util.Map;

import com.krithika.projectone.bridge.model.Acceptor;

public class BridgeOneCache {

	private static Map<Integer,Acceptor> acceptorMap = new HashMap<Integer,Acceptor>();
	private static Integer acceptorSequence = 1;
	
	
	static {
		Acceptor a1 = new Acceptor();
		a1.setName("Ram");
		a1.setAmount(1000);
		a1.setReason("for education");
		a1.setEmail("ram@gmail.com");
		a1.setPhone("44223355");
		a1.setDescription("I need money to pay the tuition fee of my first semester college");
		
		Acceptor a2 = new Acceptor();
		a2.setName("Raja");
		a2.setAmount(2000);
		a2.setReason("for education");
		a2.setEmail("raja@gmail.com");
		a2.setPhone("22334455");
		a2.setDescription("In order to write his exam, he needs the above money. Anupama, on his behalf");
		
		a1.setId(acceptorSequence++);
		acceptorMap.put(a1.getId(), a1);
		a2.setId(acceptorSequence++);
		acceptorMap.put(a2.getId(), a2);
	}
	/**
	 * @return the acceptorMap
	 */
	public static Map<Integer, Acceptor> getAcceptorMap() {
		return acceptorMap;
	}

	/**
	 * @param acceptorMap the acceptorMap to set
	 */
	private static void setAcceptorMap(Map<Integer, Acceptor> acceptorMap) {
		BridgeOneCache.acceptorMap = acceptorMap;
	}
	
	public static void addAcceptor(Acceptor acceptor){
		acceptor.setId(acceptorSequence++);
		acceptorMap.put(acceptor.getId(), acceptor);
	}
	
	
}
