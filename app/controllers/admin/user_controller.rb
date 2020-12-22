class Admin::UserController < ApplicationController

  # GET /admin/users
  def index
    render json: (User.all)
  end

  # POST /admin/users/new
  def create
    user = User.new(params)
    user.save
    render json: user
  end

  # PATCH /admin/users/update/:user_id
  def update
    user = User.find_by(user_id: params['user_id'])
    user.update(params)
    render json: user
  end

  # DELETE /admin/users/:user_id
  def delete
    user = User.find_by!(user_id: params['user_id'])
    user.delete
    render json: {}
  end
end
