const id = require('faker/lib/locales/id_ID');
const knex = require('../database/knex');
const Paginator = require('./paginator');


function makeBookService (){
    function getInformation(payload) {
        const information = {
            name: payload.name,
            author: payload.author,
            abstract: payload.abstract,
            typeid: payload.typeid,
            image: payload.image,
        };
        console.log(information);
        Object.keys(information).forEach(
            (key) => information[key] === undefined && delete information[key]
        );
        // show we can connect to database successfully 
        knex.select('*').from('books')
            .then(rows => {
                console.log('Connected to the database successfully');
            })
            .catch(error => {
                console.error('Error connecting to the database:', error);
            });
        // knex.schema.raw('DESCRIBE books')
        //     .then((schema) => {
        //         console.log(schema);
        //     })
        //     .catch((error) => {
        //         console.error('Error retrieving table schema:', error);
        //     })


        return information;
    }

    // define function to add new book 
    async function addBook(payload) {
        const book  = getInformation(payload);
        const [id] = await knex('books').insert(book);
        return {id, ...book};
    }

    //define function to get many books by filter 
    async function getManyBooks(query) {
        const {name, author, typeid,id , page = 1, limit =6 } = query;
        const paninator = new Paginator(page, limit);

        let results = await knex('books')
            .where((builder) => {
            if (name) {
                builder.where('name', 'like', `%${name}%`);
            }
            if (author) {
                builder.where('author', 'like', `%${author}%`);
            }
            if (typeid) {
                builder.where('typeid', `${typeid}`);
            }
            if (id){
                builder.where('id', `${id}`);
            }
        })
        .select(
            knex.raw('count(id) OVER() AS recordsCount'),
            'id',
            'name',
            'author',
            'abstract',
            'typeid',
            'image',	
        )
        .limit(paninator.limit)
        .offset(paninator.offset);

        let totalRecords=0;
        results = results.map((result) => {
            totalRecords = result.recordsCount;
            delete result.recordsCount;
            return result;
        })

        console.log(totalRecords);
        console.log(results);

        return {
            metadata: paninator.getMetadata(totalRecords),
            books: results,

        };
    }
    // define function to get book by id 
    async function getBookById(id) {
        const book = await knex('books').where('id', id).select("*").first();
        return book;
    }

    // define function to update book 
    async function updateBook(id, payload) {
        const update = getInformation(payload);
        return knex('books').where('id', id).update(update);
    }

    // define function to delete book
    async function deleteBook(id) {
        return knex('books').where('id', id).del();
    }
    // define function to delete all books
    async function deleteAllBooks() {
        return knex('books').del();
    }







    /////////////////////////////////////
    return {
        addBook,
        getManyBooks,
        getBookById,
        updateBook, 
        deleteBook,
        deleteAllBooks
    }

}

module.exports = makeBookService;