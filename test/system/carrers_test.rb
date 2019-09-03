require "application_system_test_case"

class CarrersTest < ApplicationSystemTestCase
  setup do
    @carrer = carrers(:one)
  end

  test "visiting the index" do
    visit carrers_url
    assert_selector "h1", text: "Carrers"
  end

  test "creating a Carrer" do
    visit carrers_url
    click_on "New Carrer"

    fill_in "Address", with: @carrer.address
    fill_in "Dob", with: @carrer.dob
    fill_in "Email", with: @carrer.email
    fill_in "Father name", with: @carrer.father_name
    fill_in "Image", with: @carrer.image
    fill_in "Mother name", with: @carrer.mother_name
    fill_in "Name", with: @carrer.name
    fill_in "Resume", with: @carrer.resume
    fill_in "Signature", with: @carrer.signature
    fill_in "String", with: @carrer.string
    click_on "Create Carrer"

    assert_text "Carrer was successfully created"
    click_on "Back"
  end

  test "updating a Carrer" do
    visit carrers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @carrer.address
    fill_in "Dob", with: @carrer.dob
    fill_in "Email", with: @carrer.email
    fill_in "Father name", with: @carrer.father_name
    fill_in "Image", with: @carrer.image
    fill_in "Mother name", with: @carrer.mother_name
    fill_in "Name", with: @carrer.name
    fill_in "Resume", with: @carrer.resume
    fill_in "Signature", with: @carrer.signature
    fill_in "String", with: @carrer.string
    click_on "Update Carrer"

    assert_text "Carrer was successfully updated"
    click_on "Back"
  end

  test "destroying a Carrer" do
    visit carrers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carrer was successfully destroyed"
  end
end
