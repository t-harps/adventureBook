class ApplicationController < ActionController::Base
  def load_user
    @user = User.find_by(id: params[:id])
  end
end
