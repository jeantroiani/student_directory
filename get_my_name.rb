def get_my_name
	
	documents=File.open($PROGRAM_NAME, "r")
	documents.readlines.each do |lines|
	puts lines

end
	
	documents.close
		
end

get_my_name