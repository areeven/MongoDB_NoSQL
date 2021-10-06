show dbs

// Create collection 3 different ways
use test
db.createCollection('my_collection')
show collections

db.createCollection('my_col', {capped: true, size: 3, max: 3})
show collections

db.magical_collection.insertOne({'Name': 'Magical Collection Created'})
show collections

// Delete database
use my_db
db.createCollection('delete')
show collections
db.dropDatabase()
show collections





