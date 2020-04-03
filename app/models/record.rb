class Record < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :categories
end
