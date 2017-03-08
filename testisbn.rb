def check_isbn_number(isbn_num)

	isbn_number = isbn_num.delete(' -') #delete all the hypens and spaces from (isbn_num)

	return false if isbn_number.length != 10 #if isbn_number is not equal to 10 then it returns false

		new_number = isbn_number[0..8] #give the new function(new_number) and to count for number
		isbn_digit = isbn_number[9]   #give another function(isbn_digit) to count for x

    if new_number.count("^0-9").zero? && isbn_digit.count("^0-9xX").zero?
        true  #then it return true after counting all number and x in new_number
    else
    	return false
    end
end

def checksum_array(isbn_num)
  isbn_num_array = isbn_number.split('').map(&:to_i)
    sum = 0
    position = 1
    isbn_num_array.each do |calc_checksum|
    	sum += checksum*position
    end

    checksum = sum % 11

    isbn_checksum = new_isbn[9]
    if isbn_checksum == 'x' || isbn_checksum == 'X'
    	checksum_value = 10
    else
    	checksum_value = isbn_checksum.to_i
    end

    if checksum == checksum_value
    	return true
    else
    	return false
    end
end
#for 13
def check_isbn_number13(isbn_num)
	new_isbn = isbn_num.delete(" -")

	return false if new_isbn.length != 13
	
	if new_isbn.count("^0-9").zero? 
		false
	else 
		return true
	end
end

def checksum_array_13(isbn_num)

	new_isbn = isbn_num[0..11]
	isbn_digit = isbn_number[12] 

	isbn_num_array = isbn_number.split('').map(&:to_i)

	position = 1
	sum = 0

	isbn_num_array.each do |calc_checksum|
		if position.event?
			sum += calc_checksum
	    else
	    	sum += calc_checksum
	    end
	    position += 1
	end

	checksum = (10 - sum % 10) % 10

	isbn_checksum = new_isbn[12]
	checksum_value = isbn_checksum.to_i

	if checksum == checksum_value
		return true
	else
		return false
	end
end



