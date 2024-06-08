var database = require("../database/config");

function buscarQtdHist() {

    var instrucaoSql = `select  count(idCientista) 'quantidade'
    from cientista`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarFormacao() {

    var instrucaoSql = `select form.Formacao Formação, count(formC.fkFormacao)
from Cientista cien
join Formacao_Cientista formC
on cien.idCientista= formC.fkCientista
join Formacao form
on form.idFormacao= formC.fkFormacao
group by formC.fkFormacao`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



function buscarNacionalidade() {

    var instrucaoSql = `select nacionalidade, count(nacionalidade)
    from cientista
    GROUP BY nacionalidade`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



module.exports = {
    buscarQtdHist,
    buscarFormacao,
    buscarNacionalidade
}

