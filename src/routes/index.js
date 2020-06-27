/// Aqui estan las rutas para autenticarse
const data = require('../assets/data/algoritmos.json');
const data2 = require('../assets/data/definiciones.json');
const express = require('express');
const router = express.Router(); //para creación de rutas
const passport = require('passport');


router.get('/', (req, res) => {
    res.render('index'); 
});

router.post('/', (req, res) => {
    res.redirect('modules/menu');
});

module.exports = router;