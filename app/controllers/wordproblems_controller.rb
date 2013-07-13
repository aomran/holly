class WordproblemsController < ApplicationController
  def calculate
  end

  def answer
  	@question = params[:question]
  	@answer = WordProblem.new({ question: @question}).answer

    respond_to do |format|
      format.html { @answer }
      format.js { @answer }
    end
  end
end
