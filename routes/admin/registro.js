var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');


/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('admin/registro');
});


router.post('/', async (req, res, next) => {

  console.log(req.body);
 
  
    
  var obj = {
    
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

  res.render('admin/registro', {
    messageRecupero: 'Registro exitoso, ya puedes iniciar session',
  });
});

module.exports = router;
