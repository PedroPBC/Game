if (move_cooldown > 0)
{
    move_cooldown--;
}
else
{
    if (keyboard_check(vk_up))
    {
        y -= tile_size;
        move_cooldown = move_cooldown_time;
    }
    else if (keyboard_check(vk_right))
    {
        x += tile_size;
        move_cooldown = move_cooldown_time;
    }
    else if (keyboard_check(vk_left))
    {
        x -= tile_size;
        move_cooldown = move_cooldown_time;
    }
    else if (keyboard_check(vk_down))
    {
        y += tile_size;
        move_cooldown = move_cooldown_time;
    }
}