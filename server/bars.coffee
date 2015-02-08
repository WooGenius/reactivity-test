Meteor.publish('bars', ->
  Meteor._sleepForMs(1000)
  Bars.find()
)

Meteor.publish('barById', (id) ->
  Bars.find(id)
)
