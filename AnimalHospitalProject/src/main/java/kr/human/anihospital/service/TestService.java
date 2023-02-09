package kr.human.anihospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import kr.human.anihospital.dao.TestMapper;
import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
public class TestService {
	
	@Autowired
	TestMapper testMapper;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	PlatformTransactionManager manager;
	
	public int totSize(String str) {
		
		TransactionStatus status = 
				manager.getTransaction(new DefaultTransactionDefinition());
		int totSize =0;
		try {
			totSize = testMapper.selectTotalCount();
			log.info(jdbcTemplate.queryForObject("select now()", String.class));
			totSize = jdbcTemplate.queryForObject("select count(seq_medicine) totSize from medicine", Integer.class);
			log.info(totSize + "개");
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return totSize;
	}
}
