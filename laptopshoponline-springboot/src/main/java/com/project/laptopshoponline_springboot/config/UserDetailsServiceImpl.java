package com.project.laptopshoponline_springboot.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.laptopshoponline_springboot.model.UserDtls;
import com.project.laptopshoponline_springboot.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    
    @Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		UserDtls user = userRepository.findByEmail(username);

		if (user == null) {
			throw new UsernameNotFoundException("không tìm thấy người dùng");
		}
		return new CustomUser(user);
	}
}
