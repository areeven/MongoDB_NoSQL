# MongoDB database

### Building a database with MongoDB and docker

Step 1
1. Run command in terminal 
   1. docker run -d -p 27017-27019:27017-27019 --name mongodblagring mongo:latest
2. Start webstorm
3. Open a project and create folder with suitable name
4. Use database plugin to create mongoDB with proper naming and test connection
5. Add suitable files to the directory such as
   1. README.md
   2. .gitignore - Add ignore for
      1. .idea
      2. DS_Store
6. Push to gitHub

Step 2
1. In console window start by showing which databases exist in our storage
   1. show dbs = show databases ctrl+enter (or cmd+enter on Mac) to run - everytime a new method is added
2. Create database by entering command
   1. use <name-of-database>
   2. Introspect database when prompted
3. Now we can start adding what we want our database to contain
4. Start by creating collection, there are three different ways to do so
   1. db.createCollection('my_collection')
   2. db.createCollection('my_collection', {capped: true, size: 3, max: 3})
   3. db.my_collection.insertOne({'Name': 'my_collection Created'})
5. 