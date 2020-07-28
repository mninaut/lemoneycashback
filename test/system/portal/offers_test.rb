require "application_system_test_case"

class Portal::OffersTest < ApplicationSystemTestCase
  setup do
    @portal_offer = portal_offers(:one)
  end

  test "visiting the index" do
    visit portal_offers_url
    assert_selector "h1", text: "Portal/Offers"
  end

  test "creating a Offer" do
    visit portal_offers_url
    click_on "New Portal/Offer"

    fill_in "Advertiser name", with: @portal_offer.advertiser_name
    fill_in "Description", with: @portal_offer.description
    fill_in "Ends at", with: @portal_offer.ends_at
    check "Premium" if @portal_offer.premium
    fill_in "Starts at", with: @portal_offer.starts_at
    fill_in "Url", with: @portal_offer.url
    click_on "Create Offer"

    assert_text "Offer was successfully created"
    click_on "Back"
  end

  test "updating a Offer" do
    visit portal_offers_url
    click_on "Edit", match: :first

    fill_in "Advertiser name", with: @portal_offer.advertiser_name
    fill_in "Description", with: @portal_offer.description
    fill_in "Ends at", with: @portal_offer.ends_at
    check "Premium" if @portal_offer.premium
    fill_in "Starts at", with: @portal_offer.starts_at
    fill_in "Url", with: @portal_offer.url
    click_on "Update Offer"

    assert_text "Offer was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer" do
    visit portal_offers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer was successfully destroyed"
  end
end
