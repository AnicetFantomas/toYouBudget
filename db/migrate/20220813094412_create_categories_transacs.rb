class CreateCategoriesTransacs < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_transacs do |t|
      t.references :transac, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
