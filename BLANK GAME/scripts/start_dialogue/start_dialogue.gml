function start_dialogue(_lines)
{
    with (obj_dialogue)
    {
        dialogue_lines = _lines;
        dialogue_index = 0;

        text_full = dialogue_lines[0];
        text_current = "";
        text_pos = 0;
        text_timer = 0;

        dialogue_active = true;
    }
}