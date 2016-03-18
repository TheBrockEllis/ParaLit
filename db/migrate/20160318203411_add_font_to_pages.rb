class AddFontToPages < ActiveRecord::Migration
  def change
    add_column :books, :font, :string, :null => true
  end
end
