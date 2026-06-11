var camx = camera_get_view_x(camera);
var camy = camera_get_view_y(camera);

var p = instance_find(obj_player, 0);

if (p == noone)
{
    if (keyboard_check_pressed(ord("R")))
    {
        instance_create_depth(640, 672, 1, obj_player);
    }

    var move_x = -keyboard_check(ord("A")) + keyboard_check(ord("D"));
    camx += move_x * spd;
}
else
{
    if (keyboard_check_pressed(ord("R")))
    {
        instance_destroy(p);
    }
    else
    {
        camx = p.x - camera_get_view_width(camera) / 2;
    }
}

// impede a câmera de sair da sala
var camw = camera_get_view_width(camera);
var camh = camera_get_view_height(camera);

camx = clamp(camx, 0, room_width - camw);
camy = clamp(camy, 0, room_height - camh);

camera_set_view_pos(camera, camx, camy);

show_debug_message(global.inte);

if (global.inte && caixa){
	if (keyboard_check_pressed(ord("X"))){
		global.inte = false;
	}
	global.stun = true;
} else{
	caixa = false;
	global.stun = false
}