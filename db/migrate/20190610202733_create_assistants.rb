class CreateAssistants < ActiveRecord::Migration[5.2]
  def change
    create_table :assistants do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
