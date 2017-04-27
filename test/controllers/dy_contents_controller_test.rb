require 'test_helper'

class DyContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dy_content = dy_contents(:one)
  end

  test "should get index" do
    get dy_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_dy_content_url
    assert_response :success
  end

  test "should create dy_content" do
    assert_difference('DyContent.count') do
      post dy_contents_url, params: { dy_content: { content: @dy_content.content, description: @dy_content.description, pagename: @dy_content.pagename } }
    end

    assert_redirected_to dy_content_url(DyContent.last)
  end

  test "should show dy_content" do
    get dy_content_url(@dy_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_dy_content_url(@dy_content)
    assert_response :success
  end

  test "should update dy_content" do
    patch dy_content_url(@dy_content), params: { dy_content: { content: @dy_content.content, description: @dy_content.description, pagename: @dy_content.pagename } }
    assert_redirected_to dy_content_url(@dy_content)
  end

  test "should destroy dy_content" do
    assert_difference('DyContent.count', -1) do
      delete dy_content_url(@dy_content)
    end

    assert_redirected_to dy_contents_url
  end
end
