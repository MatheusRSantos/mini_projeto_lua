--CREATE
function add(list,value)
  size = (#list)+1
  print(size)
  table.insert(list,value)
end

--READ
function read(list)
  for i=1,#list do
    for j=1,#list[i] do
      io.write(list[i][j])
      io.write(" ")
    end
    print()
  end
end

--UPDATE
function update(list,cpf)
  for i=1,#list do
      if list[i][2]==cpf then
          io.write("Digite o novo nome:")
          localName = io.read("*l")
          io.write("Digite o novo CPF:")
          localCpf = io.read("*l")
          list[i][1]=name
          list[i][2]=cpf
      end
  end
end
 
--DELETE
function delete(list,cpf)
--local flag = false
  for i=1,#list do
    for j=1,#list[i] do
        if j==2 then
        if guests[i][j] == cpf then
          --flag=true
          table.remove(list,i)
        end
        end
      end
  end
  end