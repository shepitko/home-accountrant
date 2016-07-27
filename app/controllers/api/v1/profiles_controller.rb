class Api::V1::ProfilesController < ApplicationController
  before_action :authenticate_user!
  respond_to :json

  def me
    @users = User.all
  end
end