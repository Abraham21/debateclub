class CreateDialogues < ActiveRecord::Migration
  def change
    create_table :dialogues do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
