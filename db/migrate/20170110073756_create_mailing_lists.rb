class CreateMailingLists < ActiveRecord::Migration
  def change
    create_table :mailing_lists do |t|
      t.timestamps null: false
      t.datetime :last_contacted
      t.string :email
    end
    add_index :mailing_lists, [:email, :last_contacted], :name => "email__last_contacted"
  end
end