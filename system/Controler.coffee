class EMVC_Controler extends EMVC_Object
  active: false
  view: null
  models: {}

  constructor: () ->
    @view = new EMVC_View(@.constructor.name)


  run: ->
    @active = true
    @render()

  render: ->
    @view.render()


