class Book < ActiveRecord::Base
   has_many :pages, -> { order(row_order: :asc) }
   belongs_to :user

   FONT_HASH = { "Montserrat" => "Montserrat", "Roboto" => "Roboto", "indie+flower" => "Indie Flower", "Lobster" => "Lobster" }
end
