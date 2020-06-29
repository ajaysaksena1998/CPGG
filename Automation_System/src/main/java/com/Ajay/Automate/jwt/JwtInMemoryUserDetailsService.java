package com.Ajay.Automate.jwt;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.Ajay.Automate.Models.User;
import com.Ajay.Automate.Repository.UserRepository;

@Service
public class JwtInMemoryUserDetailsService implements UserDetailsService {

	@Autowired
	UserRepository userRepo;
	
	List<JwtUserDetails> inMemoryUserList = new ArrayList<>();

//	static {
//		inMemoryUserList.add(new JwtUserDetails(1L, "ajaysaksena1998",
//				"$2a$10$XX7S.Fo3zNoURiIvllUAq.C8cCbU1XEPI/kKx03v5HX05XRDltZ3m", "ROLE_USER_2"));
//		// $2a$10$Dd84vlnt88TpYOeiCzW8dOiTn7Vv4CUwHhqbVfslmJfuw1RqQgJ4S
//	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User obj= userRepo.findByUsername(username);
		System.out.println(obj);
		inMemoryUserList.clear();
		inMemoryUserList.add(new JwtUserDetails(1L, obj.getUsername(),
				obj.getPassword(), obj.getRole()));
		Optional<JwtUserDetails> findFirst = inMemoryUserList.stream()
				.filter(user -> user.getUsername().equals(username)).findFirst();
		if (!findFirst.isPresent()) {
			throw new UsernameNotFoundException(String.format("USER_NOT_FOUND '%s'.", username));
		}

		return findFirst.get();
	}
}