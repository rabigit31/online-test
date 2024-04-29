var express = require('express');
var router = express.Router();
const product = require('../controllers/productController');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});


router.get('/product-list', product.productList);



module.exports = router;
