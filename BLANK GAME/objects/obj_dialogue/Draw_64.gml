if (dialogue_active)
{
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // box size
    var box_w = gui_w * 0.58;
    var box_h = 115;

    // bottom middle position
    var box_x = gui_w / 2 - box_w / 2;
    var box_y = gui_h - box_h - 0;

    // black border
    draw_set_color(c_black);
    draw_rectangle(box_x - 6, box_y - 6, box_x + box_w + 6, box_y + box_h + 6, false);

    // white inside
    draw_set_color(c_white);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);

    // text
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        gui_w / 2,
        box_y + box_h / 2,
        text_current
    );

    // reset alignment
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}