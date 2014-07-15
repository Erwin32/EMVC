class EMVC_View extends EMVC_Object
  myHTML: 'juu'
  rawView: null
  loaded: false
  vars: {}

  constructor: (@viewName) ->
    #init viewName :)

  parseViewHTML: ->
    jQuery.get './views/'+@viewName+'.html' ,(data)=>
      @rawView = data
      @process()

  process: ->

    for varKey, variable of @vars
      search = "${"+varKey+"}"
      @rawView = @rawView.replace(search,variable)

    @myHTML = @rawView
    @renderMyHTML()

  renderMyHTML: ->
    $('#App').html(@myHTML)

  render: ->
    @parseViewHTML()

  registerVar: (varKey, variable) ->
    @vars[varKey] = variable

