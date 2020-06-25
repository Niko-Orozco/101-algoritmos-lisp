/// Aqui estan las rutas para autenticarse
const express = require('express');
const router = express.Router(); //para creación de rutas
const passport = require('passport');

router.get('/', (req, res) => {
    res.render('index'); 
});

router.get('/menu', (req, res) => {
    res.render('modules/menu');
});

router.get('/algorithm/:id', (req, res) => {
    var mod = req.params.id;
    var enunciado="";
    var codigo="";
    var tema="";
    var definicion="";
    var linea="";
    res.render('modules/algoritmo', {mod, enunciado, codigo, tema, definicion, linea});
});

module.exports = router;