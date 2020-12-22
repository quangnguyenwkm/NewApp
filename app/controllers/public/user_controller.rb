class Public::UserController < ApplicationController

  # GET public/users/:user_id
  def show
    user = User.select(User.permitted_attributes).find_by(user_id: params['user_id'])
    render json: user
  end

  # PATCH public/users/:user_id
  def update
    user = User.find_by(user_id: params['user_id'])
    permited_attrs = JSON.parse(params.to_json).select { |k, v| User.permitted_attributes.include? k }
    user.update(permited_attrs)
    render json: user
  end

end
