
f = async ->
  s = "Hello World"
  await taskOneAsync()
  await taskTwoAsync()
  await taskThreeAsync()
  console.log s

g = async ->
  x = await f()
  console.log x

h = async ->
  y = 1
  y = await g()
  console.log y
