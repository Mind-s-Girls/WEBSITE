var express = require("express");
var router = express.Router();

var historiasController = require("../controllers/historiasController");

router.post("/cadastrarHist", function (req, res) {
    historiasController.cadastrarHist(req, res);
});

 

module.exports = router;