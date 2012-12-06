
f = async ->
  s = "Hello World"
  await taskOneAsync()
  await taskTwoAsync()
  await taskThreeAsync()
  console.log s

f()

