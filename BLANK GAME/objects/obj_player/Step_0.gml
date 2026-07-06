walking = false;

if (instance_exists(obj_dialogue))
{
    if (obj_dialogue.dialogue_active)
    {
        walking = false;
        image_speed = 0;
        exit;
    }
}

// If already moving, slide toward the target tile
if (moving)
{
    walking = true;

    var dist = point_distance(x, y, target_x, target_y);

    if (dist <= move_speed)
    {
        x = target_x;
        y = target_y;
        moving = false;
    }
    else
    {
        var dir = point_direction(x, y, target_x, target_y);

        x += lengthdir_x(move_speed, dir);
        y += lengthdir_y(move_speed, dir);
    }
}
else
{
    var move_x = 0;
    var move_y = 0;

    if (keyboard_check(ord("W")))
    {
        move_y = -tile_size;
        facing = "up";
    }
    else if (keyboard_check(ord("D")))
    {
        move_x = tile_size;
        facing = "right";
    }
    else if (keyboard_check(ord("A")))
    {
        move_x = -tile_size;
        facing = "left";
    }
    else if (keyboard_check(ord("S")))
    {
        move_y = tile_size;
        facing = "down";
    }

    if (move_x != 0 || move_y != 0)
    {
        var next_x = x + move_x;
        var next_y = y + move_y;

        if (!place_meeting(next_x, next_y, obj_wall))
        {
            target_x = next_x;
            target_y = next_y;
            moving = true;
            walking = true;
        }
    }
}

// Animation control
if (walking)
{
    image_speed = 1;

    if (facing == "up")
    {
        sprite_index = spr_player_walk_up;
    }
    else if (facing == "right")
    {
        sprite_index = spr_player_walk_right;
    }
    else if (facing == "left")
    {
        sprite_index = spr_player_walk_left;
    }
    else if (facing == "down")
    {
        sprite_index = spr_player_walk_down;
    }
}
else
{
    image_speed = 0;

    if (facing == "up")
    {
        sprite_index = spr_player_idle_up;
    }
    else if (facing == "right")
    {
        sprite_index = spr_player_idle_right;
    }
    else if (facing == "left")
    {
        sprite_index = spr_player_idle_left;
    }
    else if (facing == "down")
    {
        sprite_index = spr_player_idle_down;
    }

    image_index = 0;
}