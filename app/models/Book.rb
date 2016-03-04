class Book < ActiveRecord::Base
   has_many :pages, -> { order(sequence: :asc) }
   belongs_to :user
end
