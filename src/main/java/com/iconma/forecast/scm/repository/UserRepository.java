/**
 * 
 */
package com.iconma.forecast.scm.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.iconma.forecast.scm.entities.User;

/**
 * @author kishore
 *
 */
@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);
}
