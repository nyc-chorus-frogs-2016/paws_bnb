class Message < ActiveRecord::Base
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  belongs_to :foster_parent, class_name: 'User', foreign_key: :foster_parent_id

end
