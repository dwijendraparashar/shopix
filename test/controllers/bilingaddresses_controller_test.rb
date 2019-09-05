require 'test_helper'

class BilingaddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bilingaddress = bilingaddresses(:one)
  end

  test "should get index" do
    get bilingaddresses_url
    assert_response :success
  end

  test "should get new" do
    get new_bilingaddress_url
    assert_response :success
  end

  test "should create bilingaddress" do
    assert_difference('Bilingaddress.count') do
      post bilingaddresses_url, params: { bilingaddress: { addressline1: @bilingaddress.addressline1, addressline2: @bilingaddress.addressline2, addressline3: @bilingaddress.addressline3, city: @bilingaddress.city, country: @bilingaddress.country, email: @bilingaddress.email, gender: @bilingaddress.gender, name: @bilingaddress.name, order_id: @bilingaddress.order_id, phone: @bilingaddress.phone, state: @bilingaddress.state, user_id: @bilingaddress.user_id, zipcode: @bilingaddress.zipcode } }
    end

    assert_redirected_to bilingaddress_url(Bilingaddress.last)
  end

  test "should show bilingaddress" do
    get bilingaddress_url(@bilingaddress)
    assert_response :success
  end

  test "should get edit" do
    get edit_bilingaddress_url(@bilingaddress)
    assert_response :success
  end

  test "should update bilingaddress" do
    patch bilingaddress_url(@bilingaddress), params: { bilingaddress: { addressline1: @bilingaddress.addressline1, addressline2: @bilingaddress.addressline2, addressline3: @bilingaddress.addressline3, city: @bilingaddress.city, country: @bilingaddress.country, email: @bilingaddress.email, gender: @bilingaddress.gender, name: @bilingaddress.name, order_id: @bilingaddress.order_id, phone: @bilingaddress.phone, state: @bilingaddress.state, user_id: @bilingaddress.user_id, zipcode: @bilingaddress.zipcode } }
    assert_redirected_to bilingaddress_url(@bilingaddress)
  end

  test "should destroy bilingaddress" do
    assert_difference('Bilingaddress.count', -1) do
      delete bilingaddress_url(@bilingaddress)
    end

    assert_redirected_to bilingaddresses_url
  end
end
