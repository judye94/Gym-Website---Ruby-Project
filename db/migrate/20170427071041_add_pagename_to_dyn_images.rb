class AddPagenameToDynImages < ActiveRecord::Migration[5.0]
  def change
    add_column :dyn_images, :pagename, :string
  end
end
