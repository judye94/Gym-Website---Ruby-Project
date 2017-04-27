class CreateDynamicPages < ActiveRecord::Migration[5.0]
  def change
    create_table :dynamic_pages do |t|
      t.string :name
      t.text :title
      t.text :pagetype

      t.timestamps
    end
  end
end
