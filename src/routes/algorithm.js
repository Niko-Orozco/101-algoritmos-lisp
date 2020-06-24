/// Aqui estan las rutas para autenticarse
const express = require('express');
const router = express.Router(); //para creación de rutas
const passport = require('passport');


router.get('/algorithm/:id', (req, res) => {
    res.render('/modules/algoritmo');
});

module.exports = router;