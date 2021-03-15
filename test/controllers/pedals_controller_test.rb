require "test_helper"

class PedalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedal = pedals(:one)
  end

  test "should get index" do
    get pedals_url
    assert_response :success
  end

  test "should get new" do
    get new_pedal_url
    assert_response :success
  end

  test "should create pedal" do
    assert_difference('Pedal.count') do
      post pedals_url, params: { pedal: { description: @pedal.description, price: @pedal.price, title: @pedal.title } }
    end

    assert_redirected_to pedal_url(Pedal.last)
  end

  test "should show pedal" do
    get pedal_url(@pedal)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedal_url(@pedal)
    assert_response :success
  end

  test "should update pedal" do
    patch pedal_url(@pedal), params: { pedal: { description: @pedal.description, price: @pedal.price, title: @pedal.title } }
    assert_redirected_to pedal_url(@pedal)
  end

  test "should destroy pedal" do
    assert_difference('Pedal.count', -1) do
      delete pedal_url(@pedal)
    end

    assert_redirected_to pedals_url
  end
end
