package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_expression database table.
 * 
 */
@Entity
@Table(name="ts_expression")
public class TsExpression extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="expression_id")
	private int expressionId;

	private String emotion;

	private String filename;

	private String title;

	private String type;

    public TsExpression() {
    }

	public int getExpressionId() {
		return this.expressionId;
	}

	public void setExpressionId(int expressionId) {
		this.expressionId = expressionId;
	}

	public String getEmotion() {
		return this.emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}