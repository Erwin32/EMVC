class App extends EMVC
  activeControl: null

  runApp: () ->
    @log('App Run invoked')
    @activeControl = new Home()
    @activeControl.run()


window.Appication = new App()