class CreateSecurityQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :security_questions do |t|
      t.string :title
      t.timestamps
    end
  end
end
