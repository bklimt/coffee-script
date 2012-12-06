
save = (callback) ->
  setTimeout callback, 5000

class Promise
  constructor: () ->
    @resolved = false
    @rejected = false
    @value = undefined
    @error = undefined
    @resolvedCallbacks = []
    @rejectedCallbacks = []

  resolve: (value) ->
    @resolved = true
    @value = value
    for resolvedCallback in @resolvedCallbacks
      resolvedCallback @value

  reject: (error) ->
    @rejected = true
    @error = error
    for rejectedCallback in @rejectedCallbacks
      rejectedCallback @error

  then: (resolvedCallback, rejectedCallback) ->
    promise = new Promise()
    if @resolved
      resolvedCallback @value
    else if @rejected
      rejectedCallback @error
    else
      @resolvedCallbacks.push () ->
        resolvedCallback @value
        promise.resolve @value
      @rejectedCallbacks.push () ->
        rejectedCallback @error
        promise.resolve @error
    promise

saveAsync = () ->
  promise = new Promise()
  save () ->
    promise.resolve()
  promise

f = async ->
  s = "Hello World"
  await saveAsync()
  console.log s

f()

