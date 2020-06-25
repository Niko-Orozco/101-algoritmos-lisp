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
    var enunciado="Crear un Hola mundo en C";
    var codigo="int main\n{\n\tprintf(\"Hola Mundo\");\n}";
    var tema="Impresión por consola";
    var definicion="Se usa la palabra reservada printf. Entre comillas dobles se coloca el mensaje a imprimir.";
    var linea="printf(\"Hola Mundo\");";
    var input="";
    var output="Hola Mundo";
    res.render('modules/algoritmo', {mod, enunciado, codigo, tema, definicion, linea, input, output});
});

module.exports = router;