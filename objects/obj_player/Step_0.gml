if (!global.stun){
	var move = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));

	if (move != 0){
		image_xscale = move;
	}

	hspd = move * spd;

	if (!place_meeting(x + hspd, y, obj_block)){
		x += hspd;
	} else {
		while (!place_meeting(x + move, y, obj_block)){
			x += move;
		}
	}
	vspd += grv;
	if (!place_meeting(x, y + vspd, obj_block)){
		y += vspd;
	} else {
		vspd = 0;
	}

	#region SALTO
	if(keyboard_check_pressed(vk_space) && place_meeting(x, y + 1, obj_block)){
		vspd=-jspd;
	}
	#endregion

	if (place_meeting(x,y,obj_npc)){
		game_restart();
	}
}

if (keyboard_check(vk_anykey)){
	global.ini = false;
}