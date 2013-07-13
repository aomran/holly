class DropWordproblemsTable < ActiveRecord::Migration
  def change

    drop_table :word_problems
  end
end
