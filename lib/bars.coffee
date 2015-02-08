class @Bar
  constructor: (doc) ->
    _.extend(this, doc)

@Bars = new Mongo.Collection('bars',
  transform: (doc) -> new Bar(doc)
)
