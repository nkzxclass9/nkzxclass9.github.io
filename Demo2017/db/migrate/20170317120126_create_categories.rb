class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title

      t.timestamps
      # created_at
      # updated_at
    end
  end
end