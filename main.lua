function main()

local Guest = require("entities.Guest");

print("Digite o nome:");
strname = io.read();

print("Digite o cpf");
strcpf = io.read();

g = Guest.new{name=strname, cpf=strcpf}

print(g.name)
print(g.cpf)


end
main()