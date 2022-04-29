class CreateKanas < ActiveRecord::Migration[6.1]
  def change
    create_table :kanas do |t|
      t.string :mora
      t.string :kana
      t.string :reading
      t.belongs_to :quizzes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
