
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

#k = async ->
#  x = 1
#  if f()
#    x = await g()
#  console.log x
