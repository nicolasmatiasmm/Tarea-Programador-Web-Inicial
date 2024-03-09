var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');


router.get('/', async function(req, res, next){
  novedades = await novedadesModel.getNovedades();
  //novedades = novedades.splice(0,5);
  res.render('index', {
    novedades
  });
});



/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: '' });
});








module.exports = router;
