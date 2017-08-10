class Student
	attr_accessor :name, :notas
	def initialize(name, notas = [0, 0, 0])
		@name = name
		@notas = notas
	end
	def avg
		sum = 0
		@notas.each do |i|
			sum += i
		end
		return sum / @notas.size
	end
end
file = File.open('students.csv', 'r')
	data = file.readlines
file.close

a = []
datas = []
dc = []
data.each do |i|
	j = []
	a = i.chomp.split(", ")
	name = a.shift
	a.each do |i|
		j << i.to_i
	end
	student = Student.new(name, j)
	datas << student
	# a = a.delete(a.first)
	# print student.notas
end
puts "1) Leer un archivo y mostrar sus nombres/notas en un arreglo con print"
print datas # Leer un archivo y mostrar sus nombres/notas en un arreglo con print
puts

datas.each do |al|
	puts al.avg()
end