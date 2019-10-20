class WelcomeController < ApplicationController
  before_action :load_user

  def index
    @offers = @user ? @user.preferred_offers : Offer.all
    @first_offer = @offers.exists? ? @offers.first : Placeholder.new
    @outlets = Outlet.all
  end
end
