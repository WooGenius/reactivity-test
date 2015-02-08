class @Foo
  constructor: (doc) ->
    _.extend(this, doc)

@Foos = new Mongo.Collection('foos',
  transform: (doc) -> new Foo(doc)
)
