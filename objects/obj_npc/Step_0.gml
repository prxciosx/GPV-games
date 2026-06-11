if (!global.stun){
	if (move){	
		if (instance_exists(obj_player)){
			if (obj_player.x > x){
				dir = 1;
				x+=spd
			} else{
				dir = -1;
				x-=spd;
			}
		}else{
			spdfinal = 0;
			move = !move;
		}
	} else{
		if (place_meeting(x+(dir*visao),y,obj_player)){
			move = !move;
		}
	
		if (place_meeting(x,y,obj_block)){
			dir = dir * -1;
		}
	
		x+=(dir*spd)
	}

	image_xscale = dir
};