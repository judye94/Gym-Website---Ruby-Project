class CreateDynImages < ActiveRecord::Migration[5.0]
  def change
    create_table :dyn_images do |t|
      t.string :name
      t.text :alttext
      t.text :caption
      t.text :pagename
      t.timestamps
    end
  end
end
