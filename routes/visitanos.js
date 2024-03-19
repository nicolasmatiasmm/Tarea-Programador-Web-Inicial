var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('visitanos');
});




router.post('/', async (req, res, next) => {
  console.log(req.body);

  var nombre = req.body.name;
  var telefono = req.body.telefono;
  var email = req.body.email;

  var obj = {
    to: 'nicolasmurruni@gmail.com',
    subject: 'Contacto desde la Web', html: "Nombre: " + nombre + "<br> Telefono: " + telefono + "<br> Mail: " + email , 
  };

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    },
  });

  var info = await transport.sendMail(obj);

  res.render('visitanos', {
    message: 'Mensaje enviado correctamente',
  });
});

module.exports = router;
