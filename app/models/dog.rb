class Dog < ActiveRecord::Base
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  has_many :matchings
  has_many :foster_parents, through: :matchings, class_name: 'User'
end


