const express = require('express');
const bookTypeController = require('../controllers/booktype.controller');
const { methodNotAllowed } = require('../controllers/errors.controller');
const router = express.Router();


router
    .route('/')
    .get(bookTypeController.getTypes)
    .all(methodNotAllowed);

router
    .route('/:id')
    .get(bookTypeController.getTypeById)
    .all(methodNotAllowed);


// router.get('/test', (req, res) => {
//   res.send('Test Route');
// });


module.exports = router;