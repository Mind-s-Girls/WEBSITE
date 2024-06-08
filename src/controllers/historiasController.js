var historiasModel = require("../models/historiasModel");


function cadastrarHist(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    let endImg = req.body.endImgServer
    let nomeCompleto = req.body.nomeServer
    let formacao = req.body.formacaoServer
    let nacionalidade = req.body.nacionalidadeServer
    let nascimento = req.body.nascimentoServer
    let falecimento = req.body.falecimentoServer

    let subtitulo = req.body.subtituloServer
    let bio = req.body.bioServer

    // Faça as validações dos valores
    if (endImg == undefined) {
        res.status(400).send("Seu imagem está undefined!");
    } else if (nomeCompleto == undefined) {
        res.status(400).send("Seu nome está undefined!");
    } else if (formacao == undefined) {
        res.status(400).send("Sua formacao está undefined!");
    } else if (nacionalidade == undefined) {
        res.status(400).send("Sua nacionalidade está undefined!");
    } else if (nascimento == undefined) {
        res.status(400).send("Sua nascimento está undefined!");
    } else if (subtitulo == undefined) {
        res.status(400).send("Sua subtitulo está undefined!");
    } else if (bio == undefined) {
        res.status(400).send("Seu bio está undefined!");
    } else {

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        historiasModel.cadastrarHist(endImg, nomeCompleto, formacao, nacionalidade, nascimento, falecimento,subtitulo,bio )
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    cadastrarHist
}