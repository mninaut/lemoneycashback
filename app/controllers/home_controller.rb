class HomeController < ApplicationController
  def index
    datetime = Time.now.localtime
    offers = Portal::Offer.where("starts_at >= '#{datetime}'" +  "OR ends_at < '#{datetime}'"+  "OR ends_at is NULL").order(premium: :desc)
    
    gon.offers = offers
  end
end
