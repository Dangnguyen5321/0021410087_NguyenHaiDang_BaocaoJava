package com.project.laptopshoponline_springboot.util;

import java.io.UnsupportedEncodingException;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import com.project.laptopshoponline_springboot.model.ProductOrder;
import com.project.laptopshoponline_springboot.model.UserDtls;
import com.project.laptopshoponline_springboot.service.UserService;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;

@Component
public class CommonUtil {

    @Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private UserService userService;

	public Boolean sendMail(String url, String reciepentEmail) throws UnsupportedEncodingException, MessagingException {

		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setFrom("nguyenhaidang12cb3tqt@gmail.com", "Giỏ hàng");
		helper.setTo(reciepentEmail);

		String content = "<p>Xin chào,</p>" + "<p>Bạn đã yêu cầu đặt lại mật khẩu của mình.</p>"
				+ "<p>Nhấp vào liên kết bên dưới để thay đổi mật khẩu của bạn:</p>" + "<p><a href=\"" + url
				+ "\">Thay đổi mật khẩu của tôi</a></p>";
		helper.setSubject("Đặt lại mật khẩu");
		helper.setText(content, true);
		mailSender.send(message);
		return true;
	}

	public static String generateUrl(HttpServletRequest request) {

		// http://localhost:8080/forgot-password
		String siteUrl = request.getRequestURL().toString();

		return siteUrl.replace(request.getServletPath(), "");
	}
	
	String msg=null;;
	
	public Boolean sendMailForProductOrder(ProductOrder order,String status) throws Exception
	{
		
		msg="<p>Xin chào [[name]],</p>"
				+ "<p>Thank you order <b>[[orderStatus]]</b>.</p>"
				+ "<p><b>Chi tiết sản phẩm:</b></p>"
				+ "<p>Tên : [[productName]]</p>"
				+ "<p>Loại : [[category]]</p>"
				+ "<p>Số lượng : [[quantity]]</p>"
				+ "<p>Giá : [[price]]</p>"
				+ "<p>Loại thanh toán : [[paymentType]]</p>";
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setFrom("nguyenhaidang12cb3tqt@gmail.com", "Shooping Cart");
		helper.setTo(order.getOrderAddress().getEmail());

		msg=msg.replace("[[name]]",order.getOrderAddress().getFirstName());
		msg=msg.replace("[[orderStatus]]",status);
		msg=msg.replace("[[productName]]", order.getProduct().getTitle());
		msg=msg.replace("[[category]]", order.getProduct().getCategory());
		msg=msg.replace("[[quantity]]", order.getQuantity().toString());
		msg=msg.replace("[[price]]", order.getPrice().toString());
		msg=msg.replace("[[paymentType]]", order.getPaymentType());
		
		helper.setSubject("Trạng thái đơn hàng sản phẩm");
		helper.setText(msg, true);
		mailSender.send(message);
		return true;
	}
	
	public UserDtls getLoggedInUserDetails(Principal p) {
		String email = p.getName();
		UserDtls userDtls = userService.getUserByEmail(email);
		return userDtls;
	}
    
}
