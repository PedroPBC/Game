if (keyboard_check_pressed(ord("Z")))
{
    if (distance_to_object(obj_player) < 24)
    {
        if (!obj_dialogue.dialogue_active)
        {
            start_dialogue([
                "Eu vi o martim matando um cachorro la na viradinha da rua meu",
				"toma cuidade com essas coisa ai meu é tudo bizarro aqui no mato grosso do norte"
            ]);
        }
    }
}