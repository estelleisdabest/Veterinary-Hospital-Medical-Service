package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import kr.human.anihospital.mybatis.TestMapper;

@Service
@Transactional
public class TestService {
	
	@Autowired
	TestMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager;
	
	public int totSize(String str) {
		
		TransactionStatus status = 
				manager.getTransaction(new DefaultTransactionDefinition());
		int totSize =0;
		try {
			totSize = mapper.totSize();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return totSize;
	}
}
