package com.kaliry.common;

import java.sql.Timestamp;
import java.util.List;

import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModelException;

public class CtimeUitl implements TemplateMethodModel {

	@Override
	public Object exec(List timeInt) throws TemplateModelException {
		Timestamp timestamp = null;
		if (timeInt != null && timeInt.size()>0) {
			String ctime = (String)timeInt.get(0);
			Long c = Long.parseLong(ctime+"000");
			timestamp = new Timestamp(c);
		}
		return timestamp.toString();
	}

}
