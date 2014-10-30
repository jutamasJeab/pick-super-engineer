def pick_engineer () 
	#function pick engineer
	#Description: pick an engineer from file

	#init engineers array
	engineers = Array.new() 
	#loop read engineer list and add to engineer array
	File.read("engineers.txt").each_line do |line|
		engineers.push(line)
	end
	#random engineer and show to display
	return engineers[rand(engineers.count)][0..-2]
end

def featureC(searchText)
	engineers = Array.new() 
	#loop read engineer list and add to engineer array
	File.read("engineers.txt").each_line do |line|
		engineers.push(line)
	end
		
	for num in 0...engineers.size
	  if engineers[num].include? "#{@searchText}"
		puts engineers[num]
	  end
	  break
	end
end

def featureA(textRandom)
  puts textRandom
  nameRandom = textRandom 
  if nameRandom.include?(' ')
     nameRandom.gsub!(/ /, '.')
  end
  #puts nameRandom
end

def featureB()
	name = pick_engineer()
	firstName = name.split(' ')
	surName = firstName[1].split(//)
	print firstName[0] + " " + surName[0] + "..."
end

def selectName(functionNumber , *searchText)
	case functionNumber
	when 1
		return pick_engineer()
	when 2
		f1 = pick_engineer()
                featureA(f1)
	when 3
		return featureB()
	when 4
		return featureC(searchText)
	else
		return "plase enter number function number again"
	end
end
