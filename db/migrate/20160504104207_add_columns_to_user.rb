class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone_no, :integer
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :gender, :integer
  end
end
