/**
 * 
 */
package com.iconma.forecast.scm.entities;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * @author kishore
 *
 */
@MappedSuperclass
public class BaseIdEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	protected int id;

}
