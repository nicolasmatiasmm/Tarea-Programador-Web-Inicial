var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('admin/recupero');
});


router.post('/', async (req, res, next) => {

  console.log(req.body);
  var emailRecupero = req.body.emailRecupero;
  
    
  var obj = {
    to: 'nicolasmurruni@gmail.com',
    subject: 'El usuario desea recuperar su clave', html: "Mail registrado: " + emailRecupero , 
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

  res.render('admin/recupero', {
    messageRecupero: 'Recibimos tu solicitud de recupero correctamente, te contactaremos a la brevedad',
  });
});

module.exports = router;
