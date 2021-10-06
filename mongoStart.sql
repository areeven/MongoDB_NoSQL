show dbs
// Create show database
use test1
// What database I'm in
db
// What version of mongoDB
db.version()

// db.users.save()      dont use
// db.users.insert()    dont use
db.users.insertOne({
    firstname: 'Adam',
    lastname: 'Adamsson',
    age: 20
})
db.users.insertOne({
    firstname: 'Bengt',
    lastname: 'Bengtsson',
    age: 25
})

// List database of choice, in this case users
db.users.find()

// Print data for one specific user
db.users.find({firstname: 'Adam'})
db.users.find({lastname: 'Bengtsson'})
db.users.find({age: 20})

// Only need to currently be in database to be dropped/deleted
db.dropDatabase()

// -----------------------------------
// New database

show dbs
db.movie.insertOne({name: 'Die Hard'})
db.movie.find()
db.dropDatabase()

// ------------------------------------