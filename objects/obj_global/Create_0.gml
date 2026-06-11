global.ini = true;

//spd = 5;
camera = view_camera[0];

global.inte = false;

var arq = file_text_open_read("dialogos.csv");
global.dialogos = [];
// pula cabeçalho
file_text_readln(arq);
while (!file_text_eof(arq)) {

    var linha = file_text_read_string(arq);
    file_text_readln(arq);
    var partes = string_split(linha, ",");
    array_push(global.dialogos, {
        id: real(partes[0]),
        nome: partes[1],
        texto: partes[2]
    });
}

file_text_close(arq);

global.stun = false;
caixa = false;
global.id = 0;