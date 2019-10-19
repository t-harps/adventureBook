class WelcomeController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @offers = @user ? @user.preferred_offers : Offer.all
  end
end
