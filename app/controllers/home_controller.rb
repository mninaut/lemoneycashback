class HomeController < ApplicationController
  def index
    datetime = Time.now
    offers = Portal::Offer.where("starts_at <= '#{datetime}'" + "AND ends_at >= '#{datetime}'").order(premium: :desc)
    
    gon.offers = offers
  end
end
