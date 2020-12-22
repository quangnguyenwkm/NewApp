class User < ApplicationRecord

  def self.permitted_attributes
    return User.attribute_names - ['id', 'user_id', 'created_at', 'updated_at']
  end
end
