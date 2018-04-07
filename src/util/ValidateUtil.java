/*package util;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import entity.User;

public class ValidateUtil implements Validator {
	@Override
	public boolean supports(Class<?> classs) {
		// TODO Auto-generated method stub
		return User.class.equals(classs);
	}

	@Override
	public void validate(Object obj, Errors error) {
		User user = (User) obj;
		if (!user.getPassword().equals(user.getPassword())) {
			// tieem vao bindingresult
			// 1 laf thuoc tinh
			// 2 la doi tuong dat ben controller
			// 3. message
			error.rejectValue("repassword", "reg", "Password not confirm");
		}
	}

}*/
