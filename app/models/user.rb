class User < ActiveRecord::Base
    has_secure_password
  has_many :dogs, foreign_key: :owner_id
  has_many :received_ratings, foreign_key: :foster_parent_id, class_name: 'FosterParentRating'
  has_many :given_ratings, foreign_key: :owner_id, class_name: 'FosterParentRating'
  has_many :messages, foreign_key: :owner_id
  has_many :messages, foreign_key: :foster_parent_id
  has_many :matchings, foreign_key: :foster_parent_id
  has_many :foster_dogs, through: :matchings, source: :dogs

  validates :email, presence: true, uniqueness: true


end
