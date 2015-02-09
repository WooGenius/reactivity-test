Router.configure(
  layoutTemplate: 'layout'
)

Router.map(->
  @route('reactive',
    path: '/',
    template: 'reactive'
    onRun: ->
      console.log "run"
      @next()
    data: ->
      console.log "data"
      data =
        subs: @subs
        foo: -> Foos.findOne()
        bar: -> Bars.findOne()
    subscriptions: ->
      console.log "subscriptions"
      @subs =
        foos: Meteor.subscribe('foos')
        bars: Meteor.subscribe('bars')
      null
    onBeforeAction: ->
      console.log "beforeAction"
      @next()
  )
)
