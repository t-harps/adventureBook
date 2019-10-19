class WelcomeController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @offers = @user ? @user.preferred_offers : Offer.all
    @first = @offers.exists? ? @offers.first : Placeholder.new
    @outlets = Outlet.all
  end
end
