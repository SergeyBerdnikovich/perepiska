class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email_from
      t.string :subject
      t.string :text
      t.references :email

      t.timestamps
    end
    add_index :messages, :email_id
  end
end
