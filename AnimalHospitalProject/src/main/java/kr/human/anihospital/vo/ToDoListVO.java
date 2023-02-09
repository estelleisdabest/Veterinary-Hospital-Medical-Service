package kr.human.anihospital.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ToDoListVO {
	private int seqTodo;
	private int seqDoctor;
	private String todoSubject;
	private String todoContent;
	private Date todoWriteDate;
	private Date todoUpdateDate;
}
