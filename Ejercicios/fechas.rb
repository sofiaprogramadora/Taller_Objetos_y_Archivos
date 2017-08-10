require 'date'

# Crear el objeto Empresa y almacenar los pagos como arreglo
# - Crear un método que muestre todos los pagos antes de una
# fecha
# - Crear un método que muestre todos los pagos registrados
# posteriores al del día de hoy

class Empresa
	def initialize(name, pagos = [])
		@name = name
		@pagos = pagos
	end
end

file = File.open("fechas.txt", 'r')
	lines = file.readlines
file.close

pago_empresas = []
lines.each do |line|
	data = line.chomp.split(" ")
	fechas = data.dup
	name = fechas.shift
	pago_empresas << Empresa.new(name, fechas)
	fechas.map{ |f| f.to_date }
end
print pago_empresas