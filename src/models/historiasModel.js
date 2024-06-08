var database = require("../database/config")

function cadastrarHist(endImg, nomeCompleto, formacao, nacionalidade, nascimento, falecimento,subtitulo,bio ) {
    console.log("ACESSEI O HISTORIAS MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():");
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
        INSERT INTO Cientista (endImg, nomeCompleto, nacionalidade, nascimento, falecimento,subtitulo,bio ) 
        VALUES ('${endImg}', '${nomeCompleto}', '${nacionalidade}', '${nascimento}','${falecimento}','${subtitulo}','${bio}')
        
    `;

    var instrucaoSqlF = `
    INSERT INTO Formacao(formacao) values('${formacao}')
`;

var instrucaoSqlLig = `
    insert into formacao_cientista (fkCientista,fkFormacao)
values(idCientista,idFormacao})
`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);

    console.log("Executando a instrução SQL: \n" + instrucaoSqlF);
    return database.executar(instrucaoSql,instrucaoSqlF,instrucaoSqlLig);
}

module.exports = {
    cadastrarHist
};