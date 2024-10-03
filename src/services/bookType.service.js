const knex = require('../database/knex');


function createBookTypeService(){
    async function getAllTypes() {
        const types = await knex.select("*").from('type');
        return types;
    }

    async function getTypeById(id) {
        try{
            const type = await knex.select('type.name')
                                    .from('type')
                                    .join('books', 'books.typeid', 'type.type_id')
                                    .where('books.id', id)
                                    .first();
              if (type) {
                return type.name;
            } else {
                return null; // Book with the specified ID not found
            }                      
        }catch (e) {
            console.log(e);
            throw e;
        }
    }


    /////
    return {
        getAllTypes,
        getTypeById,
    }
}

module.exports = createBookTypeService;