class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
	t.integer :user_id
  	t.string :title, :limit => 32, :null => false
	t.string :author, :limit => 64
        t.integer :public
        t.text :description
        t.timestamps
    end
  end
end
