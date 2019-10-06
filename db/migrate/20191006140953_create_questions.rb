class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.references :subject, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :question_id

      t.timestamps
    end
  end
end
