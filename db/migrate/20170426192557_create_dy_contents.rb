class CreateDyContents < ActiveRecord::Migration[5.0]
  def change
    create_table :dy_contents do |t|
      t.text :description
      t.text :content
      t.text :pagename

      t.timestamps
    end
  end
end
