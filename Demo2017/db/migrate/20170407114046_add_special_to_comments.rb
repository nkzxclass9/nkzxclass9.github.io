class AddSpecialToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :special, :boolean, default: false
  end
end
