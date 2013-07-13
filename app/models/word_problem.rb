class WordProblem
	include ActiveModel::Model
	attr_accessor :question

	PATTERN = /What is (-*\d+) (plus|minus|multiplied|times|divided)\s?b?y? (-*\d+)/i

	validates :question, format: {with: PATTERN, message: "Wrong format bro!" }

	def parse
		regex_array = question.match(PATTERN).to_a

		if regex_array[2] == 'plus'
			regex_array << :+
		elsif regex_array[2] == 'minus'
			regex_array << :-
		elsif regex_array[2] == "multiplied" || regex_array[2] == "times"
			regex_array << :*
		elsif regex_array[2] == 'divided'
			regex_array << :/
		end

		regex_array
	end

	def calculate(regex_array)
		regex_array[1].to_i.send(regex_array[4], regex_array[3].to_i)
	end

	def answer
		calculate(parse)
	end
end
