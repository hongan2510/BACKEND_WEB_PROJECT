// const makeBooksService = require('../services/Books.service');
// const ApiError = require('../api-error');

async function addBook(req, res, next){
    // if(!req.body?.name){
    //     return next(new ApiError(400, 'Name can not be empty'));
    // }
    try {
            return res.send({ message: 'Add new book ' });
    } catch (error) {
        console.log(error);
        // return next(
        //     new ApiError(500, 'An error occurred while creating the Book')
        // );
    }
}

async function getBooksByFilter(req, res, next){
    let books = [];

   
    return res.send({ message: 'Get books by filter ' });
}

async function getBook(req, res, next){
    return res.send({ message: 'Get book funtion ' });
}

async function updateBook(req, res, next){
   return res.send({ message: 'Update book funtion ' });
}

async function deleteBook(req, res, next){
   return res.send({ message: 'Delete book funtion ' });
}

async function deleteAllBooks(req, res, next){
   return res.send({ message: 'Delete all books funtion ' });
}

module.exports = {
    getBooksByFilter,
    deleteAllBooks,
    getBook,
    addBook,
    updateBook,
    deleteBook,
};