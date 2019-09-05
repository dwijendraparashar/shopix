require "application_system_test_case"

class BilingaddressesTest < ApplicationSystemTestCase
  setup do
    @bilingaddress = bilingaddresses(:one)
  end

  test "visiting the index" do
    visit bilingaddresses_url
    assert_selector "h1", text: "Bilingaddresses"
  end

  test "creating a Bilingaddress" do
    visit bilingaddresses_url
    click_on "New Bilingaddress"

    fill_in "Addressline1", with: @bilingaddress.addressline1
    fill_in "Addressline2", with: @bilingaddress.addressline2
    fill_in "Addressline3", with: @bilingaddress.addressline3
    fill_in "City", with: @bilingaddress.city
    fill_in "Country", with: @bilingaddress.country
    fill_in "Email", with: @bilingaddress.email
    fill_in "Gender", with: @bilingaddress.gender
    fill_in "Name", with: @bilingaddress.name
    fill_in "Order", with: @bilingaddress.order_id
    fill_in "Phone", with: @bilingaddress.phone
    fill_in "State", with: @bilingaddress.state
    fill_in "User", with: @bilingaddress.user_id
    fill_in "Zipcode", with: @bilingaddress.zipcode
    click_on "Create Bilingaddress"

    assert_text "Bilingaddress was successfully created"
    click_on "Back"
  end

  test "updating a Bilingaddress" do
    visit bilingaddresses_url
    click_on "Edit", match: :first

    fill_in "Addressline1", with: @bilingaddress.addressline1
    fill_in "Addressline2", with: @bilingaddress.addressline2
    fill_in "Addressline3", with: @bilingaddress.addressline3
    fill_in "City", with: @bilingaddress.city
    fill_in "Country", with: @bilingaddress.country
    fill_in "Email", with: @bilingaddress.email
    fill_in "Gender", with: @bilingaddress.gender
    fill_in "Name", with: @bilingaddress.name
    fill_in "Order", with: @bilingaddress.order_id
    fill_in "Phone", with: @bilingaddress.phone
    fill_in "State", with: @bilingaddress.state
    fill_in "User", with: @bilingaddress.user_id
    fill_in "Zipcode", with: @bilingaddress.zipcode
    click_on "Update Bilingaddress"

    assert_text "Bilingaddress was successfully updated"
    click_on "Back"
  end

  test "destroying a Bilingaddress" do
    visit bilingaddresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bilingaddress was successfully destroyed"
  end
end
