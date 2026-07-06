if (keyboard_check_pressed(ord("Z")))
{
    if (distance_to_object(obj_player) < 24)
    {
        if (!obj_dialogue.dialogue_active)
        {
            start_dialogue([
                "Ola",
            ]);
        }
    }
}