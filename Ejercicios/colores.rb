class Product
	attr_accessor :azul, :rojo, :verde, :name
	def initialize(name, azul = 0, rojo = 0, verde = 0)
		@name = name
		@azul = azul
		@rojo = rojo
		@verde = verde
	end
end

suma_rojos = 0
total_productos = 0

file = File.open('productos.csv', 'r')
	lines = file.readlines
file.close

products = []
lines.each do |line|
	data = line.split(", ")
	products << Product.new(data[0], data[1].to_i, data[2].to_i, data[3].to_i)
end

# 1)
print products
puts # Un salto de linea

# 2)
products.each do |product|
	suma_rojos += product.rojo
	puts "El stock del producto #{product.name} en color rojo es de #{product.rojo}"
end
# 3)
puts "El total de rojos es #{suma_rojos}"

#4)
products.each do |product|
	puts "El stock total de #{product.name} #{product.rojo + product.azul + product.verde}"
	total_productos += (product.rojo + product.azul + product.verde)
end

#5)
puts "El stock total de todo los productos es #{total_productos}"