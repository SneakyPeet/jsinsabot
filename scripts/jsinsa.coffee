module.exports = (robot) ->
  gh = require('githubot')(robot)

  robot.respond /deploy/, (msg) ->
    gh.handleErrors (response) ->
      msg.send "Oh no! #{response.error}!"
    gh.branches('SneakyPeet/Dirtybase').merge 'develop', (mergeCommit) ->
      msg.send mergeCommit.message

  robot.hear /beer/, (msg) ->
    msg.send ':beers: :beers: :beers: :beers: :beers: :beers: Thanks For Watching'
