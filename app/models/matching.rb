class Matching < ActiveRecord::Base
  belongs_to :dog
  belongs_to :foster_parent, class_name: 'User', foreign_key: :foster_parent_id

end

