require 'test_helper'

class WordProblemTest < ActiveSupport::TestCase

  def setup
    @wordproblem = WordProblem.new
  end

  def test_convert_plus_to_math_sign
    assert_equal @wordproblem.convert_string_to_math_sign("what is 5 plus 6?"), "what is 5 + 6?"
  end

  def test_convert_minus_to_math_sign
    assert_equal @wordproblem.convert_string_to_math_sign("what is 5 minus 6?"), "what is 5 - 6?"
  end

  def test_convert_divideover_to_math_sign
    assert_equal @wordproblem.convert_string_to_math_sign("what is 5 divided by 6 over 100?"), "what is 5 / by 6 / 100?"
  end

  def test_convert_multipliedtimes_to_math_sign
    assert_equal @wordproblem.convert_string_to_math_sign("what is 5 multiplied by 6 times 100?"), "what is 5 * by 6 * 100?"
  end

  def test_strip_irrelevant_chars
    assert_equal @wordproblem.strip_irrelevant_chars("what is 5 * by 6 * 100 + 66 - 12 / 88 ~ LOREMIPSUM?"), "5*6*100+66-12/88"
  end

  def test_float_fix
    assert_equal @wordproblem.float_fix("1/3+1/4"), "1.0/3.0+1.0/4.0"

  end

  def test_add_two_numbers
    @question = WordProblem.new(question: "what is 23 plus 10?")
    assert_equal "33", @question.answer
  end

  def test_subtract_two_numbers
    @question = WordProblem.new(question: "what is 23 minus 10?")
    assert_equal "13", @question.answer
  end


  def test_multiply_two_numbers
    @question = WordProblem.new(question: "what is 23 times 10?")
    assert_equal "230", @question.answer
  end

  def test_divide_two_numbers
    @question = WordProblem.new(question: "what is 290 over 10?")
    assert_equal "29", @question.answer
  end

  def test_add_three_numbers
    @question = WordProblem.new(question: "what is 23 plus 10 plus 34?")
    assert_equal "67", @question.answer
  end

  def test_a_times_b_plus_c
    @question = WordProblem.new(question: "what is 23 times 10 plus 5?")
    assert_equal "235", @question.answer
  end

  def test_a_divided_by_b_minus_c
    @question = WordProblem.new(question: "what is 80 divided by 10 minus 5?")
    assert_equal "3", @question.answer
  end

  def test_a_plus_b_times_c
    @question = WordProblem.new(question: "what is 23 plus 10 multiplied by 5?")
    assert_equal "73", @question.answer
  end

  def test_a_minus_b_times_c
    @question = WordProblem.new(question: "what is 23 minus 10 times 5?")
    assert_equal "-27", @question.answer
  end

  def test_a_minus_b_divided_by_c
    @question = WordProblem.new(question: "what is 23 minus 10 over 5?")
    assert_equal "21", @question.answer
  end


end
