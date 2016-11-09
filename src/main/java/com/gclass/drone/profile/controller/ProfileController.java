package com.gclass.drone.profile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping
@Controller
public class ProfileController {
<<<<<<< HEAD
	@RequestMapping(value="/ProfileDetail", method=RequestMethod.GET)
=======
	@RequestMapping("/profile/ProfileDetail")
>>>>>>> a5c3f39f7adfa26f0a45580e5d4830ced2f0e8bf
	public void map() {

	}

	@RequestMapping("/profile/ProfileList")
	public void main() {
	}
}
