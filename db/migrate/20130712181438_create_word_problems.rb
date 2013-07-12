class CreateWordProblems < ActiveRecord::Migration
  def change
    create_table :word_problems do |t|
      t.string :question

      t.timestamps
    end
  end
end
