class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
 	t.integer :book_id, :null => false
        t.integer :sequence
        t.text :content
        t.string :image_location
        t.string :narration_location
        t.timestamps  
    end	
  end
end
