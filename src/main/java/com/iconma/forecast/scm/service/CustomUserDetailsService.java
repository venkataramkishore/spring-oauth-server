/**
 * 
 */
package com.iconma.forecast.scm.service;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AccountStatusUserDetailsChecker;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.iconma.forecast.scm.entities.User;
import com.iconma.forecast.scm.repository.UserRepository;

/**
 * @author kishore
 *
 */
@Service(value = "userDetailsService")
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if (Objects.isNull(user)) {
			throw new BadCredentialsException("Bad Credentials");
		}
		new AccountStatusUserDetailsChecker().check(user);
		return user;
	}

}
