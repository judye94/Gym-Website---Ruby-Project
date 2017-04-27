require 'test_helper'

class DynImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dyn_image = dyn_images(:one)
  end

  test "should get index" do
    get dyn_images_url
    assert_response :success
  end

  test "should get new" do
    get new_dyn_image_url
    assert_response :success
  end

  test "should create dyn_image" do
    assert_difference('DynImage.count') do
      post dyn_images_url, params: { dyn_image: { alttext: @dyn_image.alttext, caption: @dyn_image.caption, name: @dyn_image.name } }
    end

    assert_redirected_to dyn_image_url(DynImage.last)
  end

  test "should show dyn_image" do
    get dyn_image_url(@dyn_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_dyn_image_url(@dyn_image)
    assert_response :success
  end

  test "should update dyn_image" do
    patch dyn_image_url(@dyn_image), params: { dyn_image: { alttext: @dyn_image.alttext, caption: @dyn_image.caption, name: @dyn_image.name } }
    assert_redirected_to dyn_image_url(@dyn_image)
  end

  test "should destroy dyn_image" do
    assert_difference('DynImage.count', -1) do
      delete dyn_image_url(@dyn_image)
    end

    assert_redirected_to dyn_images_url
  end
end
