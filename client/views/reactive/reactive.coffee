Template.reactive.rendered = ->
  @autorun(=>
    console.log "reactive autorun"
    console.log "foo", @data.foo
    console.log "bar", @data.bar
    console.log "fooReady", @data.subs.foos.ready()
    console.log "barReady", @data.subs.bars.ready()
    console.log "===="
  )
