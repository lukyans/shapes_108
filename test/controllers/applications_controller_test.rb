require 'test_helper'

class ShapesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shape = shapes(:one)
  end

  test "should get index" do
    get shapes_url
    assert_response :success
  end

  test "should get new" do
    get new_shape_url
    assert_response :success
  end

  test "should create shape" do
    assert_difference('Application.count') do
      post shapes_url, params: { shape: { color: @shape.color, default_status: @shape.default_status, description: @shape.description, link: @shape.link, name: @shape.name } }
    end

    assert_redirected_to shape_url(Application.last)
  end

  test "should show shape" do
    get shape_url(@shape)
    assert_response :success
  end

  test "should get edit" do
    get edit_shape_url(@shape)
    assert_response :success
  end

  test "should update shape" do
    patch shape_url(@shape), params: { shape: { color: @shape.color, default_status: @shape.default_status, description: @shape.description, link: @shape.link, name: @shape.name } }
    assert_redirected_to shape_url(@shape)
  end

  test "should destroy shape" do
    assert_difference('Application.count', -1) do
      delete shape_url(@shape)
    end

    assert_redirected_to shapes_url
  end
end
