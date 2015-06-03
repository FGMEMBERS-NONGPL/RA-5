var setReverser1=func() {
	print("Rev1");
	if (getprop("/controls/engines/engine[0]/reverser")==1) {
		setprop("fdm/jsbsim/propulsion/engine[0]/reverser-angle-rad", 180);
		setprop("controls/engines/engine[0]/throttle", 1);
	} else {
		setprop("fdm/jsbsim/propulsion/engine[0]/reverser-angle-rad", 0);
		setprop("controls/engines/engine[0]/throttle", 0);
	}
}

var setReverser2=func() {
	print("Rev2");
	if (getprop("/controls/engines/engine[1]/reverser")==1) {
		setprop("fdm/jsbsim/propulsion/engine[1]/reverser-angle-rad", 180);
		setprop("controls/engines/engine[1]/throttle", 1);
	} else {
		setprop("fdm/jsbsim/propulsion/engine[1]/reverser-angle-rad", 0);
		setprop("controls/engines/engine[1]/throttle", 0);
	}
}

print("Nasal init");
var reverser1_listener=setlistener("/controls/engines/engine[0]/reverser", setReverser1);
var reverser2_listener=setlistener("/controls/engines/engine[1]/reverser", setReverser2);


