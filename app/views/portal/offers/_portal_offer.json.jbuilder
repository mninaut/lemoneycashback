json.extract! portal_offer, :id, :advertiser_name, :url, :description, :starts_at, :ends_at, :premium, :created_at, :updated_at
json.url portal_offer_url(portal_offer, format: :json)
