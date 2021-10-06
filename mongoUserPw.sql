show dbs

// Create collection 3 different ways
use test
db.createCollection('my_collection')
show collections

// Capped = fixed size of collection
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

use new_db
db.gaming.insertOne({'Player': 'Olaf', 'Class': 'Warrior', 'Level': 20})
show collections

db.gaming.find()

// Insert into collections
use test
show collections

db.my_collection.find()
db.my_collection.insertOne({Username: 'Adam', Password: 'password'})
db.my_collection.find()

db.my_collection.insertMany([
    {Username: 'Bengt', Password: 'password'},
    {Username: 'Cecilia', Password: 'password'},
    {Username: 'David', Password: 'password'}
])

db.my_collection.find()

// Query document
db.my_collection.find()
// Add .pretty() when working in console to make it look cleaner - db.my_collection.find().pretty()

db.my_collection.find({Username: 'Bengt'})
db.my_collection.find({Password: 'password'})

// Update
db.my_collection.updateOne({Username: 'Bengt'}, {$set: {Password: 'hemligt'}})
db.my_collection.updateOne({Username: 'Cecilia'}, {$set: {Password: 'secret'}})
db.my_collection.updateOne({Username: 'David'}, {$set: {Password: 'h3ml1gt'}})

// Filter
// Equality
db.my_collection.find({Password: 'hemligt'})
// Less than
db.my_collection.find({Password: {$lt: '4'}})  // lt = less than (Get out all elements that are below 4
db.my_collection.find({Password: {$lte: '4'}})  // lte = less than equals(Get out all elements that are below 4 or 4
db.my_collection.find({Password: {$gt: '4'}})  // gt = greater than equal(Get out all elements that are above 4
db.my_collection.find({Password: {$gte: '4'}})  // gt = greater than equal(Get out all elements that are above 4 or 4
db.my_collection.find({Password: {$ne: '4'}})  // ne = not equal(Get out all elements that are not equal 4 or 4

// Find all elements AND
db.my_collection.find({$and: [{Username: {$ne: 'Adam'}}, {Password: {$ne: 'secret'}}]})

// Find all elements OR
db.my_collection.find({$or: [{Username: 'Adam'}, {Password: 'secret'}]})

// Update
db.my_collection.find().count()
db.my_collection.insertOne({Username: 'Emilie', Password: 'hoppa123'})
db.my_collection.find().count()

// Regular update
db.my_collection.updateOne({Username: 'Cecilia'}, {$set: {Password: 'secret'}})

// Javascript update function and variables
selection_criteria = {Username: 'Cecilia'}
updated_data = {Username: 'Carl'}

db.my_collection.find(selection_criteria)
db.my_collection.updateOne(selection_criteria, {$set: updated_data})
db.my_collection.find(updated_data)

db.my_collection.find()

// Delete
db.my_collection.find().count()
db.my_collection.insertOne({Username: 'Family Guy', Password: 'dontguess'})

selection_criteria = {Username: 'Family Guy'}
db.my_collection.find(selection_criteria)
db.my_collection.deleteOne(selection_criteria)
db.my_collection.find().count()
db.my_collection.find()

// SAVE
db.my_collection.find().count()
db.my_collection.insertOne({Username: 'Family Guy', Password: 'creepy'})

selection_criteria = {Username: 'Family Guy'}
updated_data = {Username: 'Stewie'}

db.my_collection.find()
db.my_collection.replaceOne(selection_criteria, updated_data)
db.my_collection.find()

selection_criteria = {Username: 'Stewie'}
updated_data = {Username: 'Stewie', Password: 'dude'}

// Projection
db.my_collection.find()
db.my_collection.find({})

// 1 = true , 0 = false ( only works with id (false)
// Show specific column
db.my_collection.find({}, {Username: 1})
db.my_collection.find({}, {Password: 1})
db.my_collection.find({}, {_id: 1})

// Show specific column excluding _id
db.my_collection.find({}, {Username: 1, Password: 1})
db.my_collection.find({}, {Username: 1, _id: 0})
db.my_collection.find({}, {Password: 1, _id: 0})

// Limit
db.my_collection.find({}, {Username: 1, _id: 0}).count()
db.my_collection.find({}, {Username: 1, _id: 0}).limit(2)
// Ascending
db.my_collection.find({}, {Username: 1, _id: 0}).sort({Username: 1})
// Descending
db.my_collection.find({}, {Username: 1, _id: 0}).sort({Username: -1})
db.my_collection.find({}, {Password: 1, _id: 0}).sort({Password: 1})
db.my_collection.find({}, {Password: 1, _id: 0}).sort({Password: -1})
db.my_collection.find({}, {Username: 1, _id: 0}).limit(2).sort({Username: -1})

