class AddSecurityQuestion < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :security_question
  end
end
