if (dialogue_active)
{
    // typewriter effect
    if (text_pos < string_length(text_full))
    {
        text_timer++;

        if (text_timer >= text_speed)
        {
            text_timer = 0;
            text_pos++;
            text_current = string_copy(text_full, 1, text_pos);
        }
    }

    // press Z or Enter to continue
    if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
    {
        // if text is still typing, instantly finish the line
        if (text_pos < string_length(text_full))
        {
            text_pos = string_length(text_full);
            text_current = text_full;
        }
        else
        {
            dialogue_index++;

            if (dialogue_index < array_length(dialogue_lines))
            {
                text_full = dialogue_lines[dialogue_index];
                text_current = "";
                text_pos = 0;
                text_timer = 0;
            }
            else
            {
                dialogue_active = false;
            }
        }
    }
}