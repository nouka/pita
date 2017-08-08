# Description
#   Google Apisを用いて様々な処理を行う
#
# Commands:
#

MongoClient = require('mongodb').MongoClient
dbHost = process.env.MONGODB_URI

MongoClient.connect dbHost, (error, db) ->
  collection = db.collection('credentials')
  collection.find().toArray((error, documents) ->
    for (var document of documents)
      console.log(document.name)
  )

module.exports = (robot) ->
  robot.respond /mongo/i, (msg) ->
