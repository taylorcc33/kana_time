class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.boolean :complete
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
