class WordproblemsController < ApplicationController
  def calculate
  end

  def answer
  	@question = params[:question]
  	@answer = WordProblem.new({ question: @question}).answer
  end
end
