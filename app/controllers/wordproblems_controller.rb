class WordproblemsController < ApplicationController
  def ask
  end

  def answer
  	@question = WordProblem.new({ question: params[:question]})
    @sound_option = params[:sound]

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
