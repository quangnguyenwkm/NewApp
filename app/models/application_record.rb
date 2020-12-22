class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # def get_jwt_token
  #   authorization = request.headers['HTTP_AUTHORIZATION']
  #   return authorization.split(' ').last
  # end
  #
  # def get_user_id
  #   get_jwt_token
  # end

end
