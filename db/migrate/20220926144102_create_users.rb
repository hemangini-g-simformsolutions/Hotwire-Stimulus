class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :gender
      t.boolean :accept_terms
      t.text :description
      t.date :dob      
      t.string :security_answer

      t.timestamps
    end
  end
end
