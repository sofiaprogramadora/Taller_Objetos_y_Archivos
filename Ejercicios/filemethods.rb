def csv_split(file, pms)
	file = File.open(file, pms)
		data = file.readlines
	file.close

	ndata = []

	data.each do |i|
		ndata << i.split(" ,")
	end
	return ndata
end