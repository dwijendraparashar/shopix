require 'test_helper'

class BillingaddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billingaddress = billingaddresses(:one)
  end

  test "should get index" do
    get billingaddresses_url
    assert_response :success
  end

  test "should get new" do
    get new_billingaddress_url
    assert_response :success
  end

  test "should create billingaddress" do
    assert_difference('Billingaddress.count') do
      post billingaddresses_url, params: { billingaddress: { addressline1: @billingaddress.addressline1, addressline2: @billingaddress.addressline2, addressline3: @billingaddress.addressline3, city: @billingaddress.city, country: @billingaddress.country, email: @billingaddress.email, gender: @billingaddress.gender, name: @billingaddress.name, order_id: @billingaddress.order_id, phone: @billingaddress.phone, state: @billingaddress.state, user_id: @billingaddress.user_id, zipcode: @billingaddress.zipcode } }
    end

    assert_redirected_to billingaddress_url(Billingaddress.last)
  end

  test "should show billingaddress" do
    get billingaddress_url(@billingaddress)
    assert_response :success
  end

  test "should get edit" do
    get edit_billingaddress_url(@billingaddress)
    assert_response :success
  end

  test "should update billingaddress" do
    patch billingaddress_url(@billingaddress), params: { billingaddress: { addressline1: @billingaddress.addressline1, addressline2: @billingaddress.addressline2, addressline3: @billingaddress.addressline3, city: @billingaddress.city, country: @billingaddress.country, email: @billingaddress.email, gender: @billingaddress.gender, name: @billingaddress.name, order_id: @billingaddress.order_id, phone: @billingaddress.phone, state: @billingaddress.state, user_id: @billingaddress.user_id, zipcode: @billingaddress.zipcode } }
    assert_redirected_to billingaddress_url(@billingaddress)
  end

  test "should destroy billingaddress" do
    assert_difference('Billingaddress.count', -1) do
      delete billingaddress_url(@billingaddress)
    end

    assert_redirected_to billingaddresses_url
  end
end
