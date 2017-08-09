# Description
#   Google Apisを用いて様々な処理を行う
#
# Commands:
#

# MongoClient = require('mongodb').MongoClient
# dbHost = process.env.MONGODB_URI
# gapi = require('googleapis')


module.exports = (robot) ->
  robot.respond /mongo/i, (msg) ->
    # MongoClient.connect dbHost, (error, db) ->
    #   collection = db.collection('credentials')
    #   collection.find().toArray((error, documents) ->
    #     key = documents[0].credit
    #     console.log(key)
    #     console.log(key.client_email)
    #     console.log(key.privae_key)
    #     jwtClient = new gapi.auth.JWT(key.client_email, null, key.privae_key, ['https://www.googleapis.com/auth/calendar.readonly'], null)
    #     jwtClient.authorize((err, tokens) ->
    #       if (err)
    #         console.log(err)
    #         return
    #       console.log(tokens)
    #     )
    #   )
