class Page < ActiveRecord::Base
  belongs_to :books

  delegate :user, :to => :books, :allow_nil => true
end
