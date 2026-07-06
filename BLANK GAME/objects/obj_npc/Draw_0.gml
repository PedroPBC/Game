draw_self();

if (instance_exists(obj_player))
{
    if (point_distance(x, y, obj_player.x, obj_player.y) < 32)
    {
        draw_sprite(
            spr_interact_dialogue,
            floor(current_time / 400) mod sprite_get_number(spr_interact_dialogue),
            x,
            y - 32
        );
    }
}