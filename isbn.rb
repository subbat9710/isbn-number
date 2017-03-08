require "minitest/autorun"
require_relative "testisbn.rb"

class TestIsbnNumber < Minitest::Test
	
	def test_1_with_valid_special_character_x_isbn10_return_true
		isbn_num = "049567148x"
		assert_equal(true,check_isbn_number(isbn_num))
	end
	def test_2_with_space_isbn10_return_true
		isbn_num = "978 0 471 480"
		assert_equal(true,check_isbn_number(isbn_num))
	end
	def test_3_with_hyphens_isbn10_return_true
		isbn_num = "438-0465-438"
		assert_equal(true,check_isbn_number(isbn_num))
	end
	def test_4_with_special_character_return_false
		isbn_num = "584%23459884"
		assert_equal(false,check_isbn_number(isbn_num))
	end
    def test_5_with_number_return_false
    	isbn_num = "8040749853485"
    	assert_equal(false,check_isbn_number(isbn_num))
    end
    def test_6_with_number_return_true
    	isbn_num = "123456789X"
    	assert_equal(true,check_isbn_number(isbn_num))
    end
#for 13
  
    def test_7_with_number_return_true
    	isbn_num = "981495146601x"
    	assert_equal(true,check_isbn_number13(isbn_num))
    end
    def test_8_with_number_return_false
    	isbn_num = "4971%59143565698"
    	assert_equal(false,check_isbn_number13(isbn_num))
    end
    def test_9_with_number_return_true
    	isbn_num = "538573205832X"
    	assert_equal(true,check_isbn_number13(isbn_num))
    end
    def test_10_with_number_return_false
    	isbn_num = "9384-484-578989"
    	assert_equal(false,check_isbn_number13(isbn_num))
    end
    def test_11_with_number_return_true
    	isbn_num = "978234768094x"
    	assert_equal(true,check_isbn_number13(isbn_num))
    end
    def test_12_with_number_return_false
    	isbn_num = "37358978*9048488"
    	assert_equal(false,check_isbn_number13(isbn_num))
    end
    def test_13_with_valid_number_return_true
        isbn_num = "978047148648x"
        assert_equal(true,check_isbn_number13(isbn_num))
    end
end