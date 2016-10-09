--read a text file
function open(fileName)
  file = io.open(fileName,"r+")
  list = {}
  io.input(file)
   
  next = io.read()
  
  i=1
  while next~=nil do
    j=1
    list[i]={}
    for next in string.gmatch(next, "([^".."%s".."]+)") do
      list[i][j] = next
      j = j + 1
    end
    i=i+1
    next = io.read()
  end
  return list
end

--Write an list on a text file
function save(list, fileName)
  local file = io.open(fileName,"w+")
  io.output(file)
  for i=1,#list do
    for j=1,#list[i] do
      io.write(list[i][j])
      io.write(" ")
    end
    io.write("\n")
  end
end