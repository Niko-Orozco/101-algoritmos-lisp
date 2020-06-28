/// Aqui estan las rutas para autenticarse
const express = require('express');
const router = express.Router(); //para creación de rutas
const passport = require('passport');
const data = require('../assets/data/algoritmos.json');
const data2 = require('../assets/data/definiciones.json');
var cnt = 0;


router.get('/algorithm/:id', (req, res) => {
    var mod = req.params.id;
    var enunciado=data[0][mod]["1"];
    var codigo=data[0][mod]["2"];
    var tema="";
    var definicion="";
    var linea="";
    var input="";
    var output="";
    var ant = parseInt(mod)-1;
    if (ant == 0){
        ant = 1;
    }
    var sig = parseInt(mod)+1;
    res.render('modules/algoritmo', {mod, enunciado, codigo, tema, definicion, linea, input, output, sig, ant});
});

router.post('/algorithm/:id', (req, res) => {
    var mod = req.params.id;
    cnt+=1;
    var enunciado=data[0][mod]["1"];
    var codigo=data[0][mod]["2"];
    var tema=data[0][mod]["3"][cnt];
    var definicion=data2[0][tema];
    var linea=data[0][mod]["3"][cnt];
    var input="";
    var output="";
    var ant = parseInt(mod)-1;
    if (ant == 0){
        ant = 1;
    }
    var sig = parseInt(mod)+1;
    cnt==1;
    res.render('modules/algoritmo', {mod, enunciado, codigo, tema, definicion, linea, input, output, sig, ant});
});

router.get('/algorithm/sgt/:id', (req, res) => {
    var mod = req.params.id;
    var tope = parseInt(data[0][mod]["5"]);
    cnt+=1;
    if(cnt >= (tope+1)){
        cnt = tope;
    }
    var enunciado=data[0][mod]["1"];
    var codigo=data[0][mod]["2"];
    var tema=data[0][mod]["3"][cnt];
    var definicion=data2[0][tema];
    var linea=data[0][mod]["4"][cnt];
    var input="";
    var output="";
    var ant = parseInt(mod)-1;
    if (ant == 0){
        ant = 1;
    }
    var sig = parseInt(mod)+1;
    console.log(cnt)
    res.render('modules/algoritmo', {mod, enunciado, codigo, tema, definicion, linea, input, output, sig, ant});
});

router.get('/algorithm/ant/:id', (req, res) => {
    var mod = req.params.id;
    cnt-=1;
    if(cnt <= 0){
        cnt = 1;
    }
    var enunciado=data[0][mod]["1"];
    var codigo=data[0][mod]["2"];
    var tema=data[0][mod]["3"][cnt];
    var definicion=data2[0][tema];
    var linea=data[0][mod]["4"][cnt];
    var input="";
    var output="";
    var ant = parseInt(mod)-1;
    if (ant == 0){
        ant = 1;
    }
    var sig = parseInt(mod)+1;
    console.log(cnt)
    res.render('modules/algoritmo', {mod, enunciado, codigo, tema, definicion, linea, input, output, sig, ant});
});

module.exports = router;