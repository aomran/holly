class WordProblem < ActiveRecord::Base

	def answer
		/what is (\S?\d+) (\S+\s?\S*) (\S?\d+)\?/i.match(question)
		return $1.to_i + $3.to_i if $2.downcase == 'plus'
		return $1.to_i - $3.to_i if $2.downcase == 'minus'
		return $1.to_i * $3.to_i if $2.downcase == 'multiplied by'
		return $1.to_i / $3.to_i if $2.downcase == 'divided by'
	end

	# rails does this for all columns in database
	# def question
	# 	@question
	# end

	# def quesiton=(question)
	# 	@question = question
	# end
end
