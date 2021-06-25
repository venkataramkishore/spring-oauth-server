/**
 * 
 */
package com.iconma.forecast.scm.entities;

import javax.persistence.Entity;

/**
 * @author kishore
 *
 */
@Entity(name = "PERMISSION")
public class Permission extends BaseIdEntity {

	private String name;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	
}
