# Description
#   Google Apisを用いて様々な処理を行う
#
# Commands:
#

MongoClient = require('mongodb').MongoClient
dbHost = process.env.MONGODB_URI

module.exports = (robot) ->
  robot.respond /mongo/i, (msg) ->
    MongoClient.connect dbHost, (error, db) ->
      collection = db.collection('credentials')
      collection.find().toArray((error, documents) ->
        for document of documents
          console.log(document.name)
      )
      robot.send 'test'
