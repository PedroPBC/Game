if (move_cooldown > 0)
{
    move_cooldown--;
}

walking = false;

var move_x = 0;
var move_y = 0;

if (move_cooldown <= 0)
{
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
        if (!place_meeting(x + move_x, y + move_y, obj_wall))
        {
            x += move_x;
            y += move_y;

            walking = true;
            move_cooldown = move_cooldown_time;
        }
    }
}

if (move_cooldown > 0)
{
    walking = true;
}

if (walking)
{
    image_speed = 0.25;

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