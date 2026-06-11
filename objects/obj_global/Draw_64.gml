if (global.inte){
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // Caixa
    var _dx = 0;
    var _dy = gui_h * 0.7;
    var _boxw = gui_w;
    var _boxh = gui_h - _dy;

    // Fundo preto
    draw_set_color(c_black);
    draw_rectangle(
        _dx,
        _dy,
        _dx + _boxw,
        _dy + _boxh,
        false
    );

    // Borda branca (opcional)
    draw_set_color(c_white);
    draw_rectangle(
        _dx,
        _dy,
        _dx + _boxw,
        _dy + _boxh,
        true
    );

    // Margens internas
    _dx += 16;
    _dy += 16;

    // Nome
    var _nome = global.dialogos[global.id].nome;
    draw_text(_dx, _dy, _nome);

    // Texto
    _dy += 40;

    var _texto = global.dialogos[global.id].texto;
    draw_text_ext(_dx + 20, _dy, _texto, -1, _boxw - (_dx * 2));

    caixa = true;
}
else
{
    caixa = false;
}