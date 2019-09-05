require "application_system_test_case"

class BillingaddressesTest < ApplicationSystemTestCase
  setup do
    @billingaddress = billingaddresses(:one)
  end

  test "visiting the index" do
    visit billingaddresses_url
    assert_selector "h1", text: "Billingaddresses"
  end

  test "creating a Billingaddress" do
    visit billingaddresses_url
    click_on "New Billingaddress"

    fill_in "Addressline1", with: @billingaddress.addressline1
    fill_in "Addressline2", with: @billingaddress.addressline2
    fill_in "Addressline3", with: @billingaddress.addressline3
    fill_in "City", with: @billingaddress.city
    fill_in "Country", with: @billingaddress.country
    fill_in "Email", with: @billingaddress.email
    fill_in "Gender", with: @billingaddress.gender
    fill_in "Name", with: @billingaddress.name
    fill_in "Order", with: @billingaddress.order_id
    fill_in "Phone", with: @billingaddress.phone
    fill_in "State", with: @billingaddress.state
    fill_in "User", with: @billingaddress.user_id
    fill_in "Zipcode", with: @billingaddress.zipcode
    click_on "Create Billingaddress"

    assert_text "Billingaddress was successfully created"
    click_on "Back"
  end

  test "updating a Billingaddress" do
    visit billingaddresses_url
    click_on "Edit", match: :first

    fill_in "Addressline1", with: @billingaddress.addressline1
    fill_in "Addressline2", with: @billingaddress.addressline2
    fill_in "Addressline3", with: @billingaddress.addressline3
    fill_in "City", with: @billingaddress.city
    fill_in "Country", with: @billingaddress.country
    fill_in "Email", with: @billingaddress.email
    fill_in "Gender", with: @billingaddress.gender
    fill_in "Name", with: @billingaddress.name
    fill_in "Order", with: @billingaddress.order_id
    fill_in "Phone", with: @billingaddress.phone
    fill_in "State", with: @billingaddress.state
    fill_in "User", with: @billingaddress.user_id
    fill_in "Zipcode", with: @billingaddress.zipcode
    click_on "Update Billingaddress"

    assert_text "Billingaddress was successfully updated"
    click_on "Back"
  end

  test "destroying a Billingaddress" do
    visit billingaddresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Billingaddress was successfully destroyed"
  end
end
