class WordproblemsController < ApplicationController
  def calculate
  end

  def answer
  	@question = WordProblem.new({ question: params[:question]})

    respond_to do |format|
      if @question.valid?
        @answer = @question.answer
        format.html {  }
        format.js {  }
      else
        @error_message = @question.errors.messages[:question][0]
        format.html { redirect_to wordproblems_calculate_path }
        format.js { }
      end
    end
  end
end
