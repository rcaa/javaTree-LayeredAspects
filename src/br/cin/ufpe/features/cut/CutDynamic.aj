package br.cin.ufpe.features.cut;

import driver.util.Driver;

public aspect CutDynamic extends CutFeature {

	pointcut driver() : if (Driver.isActivated("cut")); // true default
	
	Object around() : adviceexecution() && within(br.cin.ufpe.features.cut.CutFeature) && !driver() {
		return null;
	}
}