class Home extends EMVC_Controler

  constructor: ->
    @HomeModel = new HomeModel()
    super

  run: ->
    @view.registerVar('variable',@HomeModel.variable)
    super