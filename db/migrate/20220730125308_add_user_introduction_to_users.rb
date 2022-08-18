class AddUserIntroductionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_introduction, :text, :string
    add_index :users, :email,  unique: true
  end
end
