exports.jenkinsUrl = (repo) ->
  protocol = "https"
  hostName = "hapitas.jp"
  port = 54435
  if (repo == "apollo")
    subDomain = "ci03"
  else
    subDomain = "ci02"
  protocol + "://" + subDomain + "." + hostName + ":" + port

exports.scrutinizerCiUrl = (repo=null) ->
  protocol = "https"
  hostName = "scrutinizer-ci.com"
  if (repo != null)
    hostName += "/g/oz-sysb/#{repo}"
  protocol + "://" + "." + hostName
