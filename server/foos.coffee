Meteor.publish('foos', ->
  Foos.find()
)

Meteor.publish('fooById', (id) ->
  Foos.find(id)
)
