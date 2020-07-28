require 'test_helper'

class Portal::OffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portal_offer = portal_offers(:one)
  end

  test "should get index" do
    get portal_offers_url
    assert_response :success
  end

  test "should get new" do
    get new_portal_offer_url
    assert_response :success
  end

  test "should create portal_offer" do
    assert_difference('Portal::Offer.count') do
      post portal_offers_url, params: { portal_offer: { advertiser_name: @portal_offer.advertiser_name, description: @portal_offer.description, ends_at: @portal_offer.ends_at, premium: @portal_offer.premium, starts_at: @portal_offer.starts_at, url: @portal_offer.url } }
    end

    assert_redirected_to portal_offer_url(Portal::Offer.last)
  end

  test "should show portal_offer" do
    get portal_offer_url(@portal_offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_portal_offer_url(@portal_offer)
    assert_response :success
  end

  test "should update portal_offer" do
    patch portal_offer_url(@portal_offer), params: { portal_offer: { advertiser_name: @portal_offer.advertiser_name, description: @portal_offer.description, ends_at: @portal_offer.ends_at, premium: @portal_offer.premium, starts_at: @portal_offer.starts_at, url: @portal_offer.url } }
    assert_redirected_to portal_offer_url(@portal_offer)
  end

  test "should destroy portal_offer" do
    assert_difference('Portal::Offer.count', -1) do
      delete portal_offer_url(@portal_offer)
    end

    assert_redirected_to portal_offers_url
  end
end
