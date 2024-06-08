var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/quantidade", function (req, res) {
    medidaController.buscarQtdHist(req, res);
});

router.get("/formacao", function (req, res) {
    medidaController.buscarFormacao(req, res);
});

router.get("/nacionalidade", function (req, res) {
    medidaController.buscarNacionalidade(req, res);
})

module.exports = router;