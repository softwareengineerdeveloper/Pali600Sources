package org.javabrains.koushik.dto.Lesson15;

import javax.persistence.Entity;

@Entity
public class FourWheeler extends Vehicle {

	private String steeringWheel;

	public String getSteeringWheel() {
		return this.steeringWheel;
	}

	public void setSteeringWheel(String steeringWheel) {
		this.steeringWheel = steeringWheel;
	}
}
