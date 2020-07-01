const express = require('express');
const router = express.Router(); //para creación de rutas
const data = require('../assets/data/algoritmos.json');

router.get('/algorithm/:id', (req, res) => {
    var mod = req.params.id;
    var enunciado=data[0][mod]["1"];
    var pseudocodigo=data[0][mod]["2"];
    res.render('modules/enunciado', {mod, enunciado, pseudocodigo});
});

router.post('/algorithm/:id', (req, res) => {
    res.redirect('modules/algoritmo');
});

module.exports = router;