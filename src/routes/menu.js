/// Aqui estan las rutas para autenticarse
const express = require('express');
const router = express.Router(); //para creación de rutas
const passport = require('passport');


router.get('/menu', (req, res) => {
    res.render('modules/menu');
});

router.post('/menu', (req, res) => {
    res.redirect('modules/enunciado');
});

module.exports = router;