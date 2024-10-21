package com.project.laptopshoponline_springboot.config;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.project.laptopshoponline_springboot.model.UserDtls;
import com.project.laptopshoponline_springboot.repository.UserRepository;
import com.project.laptopshoponline_springboot.service.UserService;
import com.project.laptopshoponline_springboot.service.impl.UserServiceImpl;
import com.project.laptopshoponline_springboot.util.AppConstant;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class AuthFailureHandlerImpl extends SimpleUrlAuthenticationFailureHandler {

    @Autowired
	private UserRepository userRepository;

	@Autowired
	private UserService userService;

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {

		String email = request.getParameter("username");

		UserDtls userDtls = userRepository.findByEmail(email);

		if (userDtls != null) {

			if (userDtls.getIsEnable()) {

				if (userDtls.getAccountNonLocked()) {

					if (userDtls.getFailedAttempt() < AppConstant.ATTEMPT_TIME) {
						userService.increaseFailedAttempt(userDtls);
					} else {
						userService.userAccountLock(userDtls);
						exception = new LockedException("Tài khoản của bạn đã bị khóa!! lần thử 3 thất bại");
					}
				} else {

					if (userService.unlockAccountTimeExpired(userDtls)) {
						exception = new LockedException("Tài khoản của bạn đã được mở khóa !! Vui lòng thử đăng nhập");
					} else {
						exception = new LockedException("tài khoản của bạn đã bị khóa!! Thỉnh thoảng hãy thử lại");
					}
				}

			} else {
				exception = new LockedException("tài khoản của bạn không hoạt động");
			}
		} else {
			exception = new LockedException("Email và mật khẩu không hợp lệ");
		}

		super.setDefaultFailureUrl("/signin?error");
		super.onAuthenticationFailure(request, response, exception);
	}
    
}
