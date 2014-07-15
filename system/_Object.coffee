class EMVC_Object
  log: (msg, originClass = @) ->
    console.log('('+originClass.constructor.name+') '+msg)