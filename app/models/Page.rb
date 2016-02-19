class Page < ActiveRecord::Base
  belongs_to :book

  delegate :user, :to => :book, :allow_nil => true
end
