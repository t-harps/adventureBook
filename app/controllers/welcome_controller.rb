class WelcomeController < ApplicationController
  def index
   @offers = Offer.all
  end
end
