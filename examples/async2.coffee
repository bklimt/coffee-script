
f = async ->
  a = await taskOneAsync()
  b = await taskTwoAsync()
  c = await taskThreeAsync()
  console.log "" + a + b + c

g = async ->
  x = await f()
  console.log x

h = async ->
  y = 1
  y = await g()
  console.log y

k = async ->
  a = b = c = await d()
  console.log a

m = async ->
  x = 3 * await y
  console.log x

#k = async ->
#  x = 1
#  if f()
#    x = await g()
#  console.log x
