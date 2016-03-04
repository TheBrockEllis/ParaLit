class AddImageToPagesTable < ActiveRecord::Migration
  def up
    remove_column :pages, :image_location, :string

    add_attachment :pages, :image
  end

  def down
    remove_attachment :pages, :image

    add_column :pages, :image_location, :string
  end
end