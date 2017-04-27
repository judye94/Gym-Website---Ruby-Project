require 'test_helper'

class DynamicPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dynamic_page = dynamic_pages(:one)
  end

  test "should get index" do
    get dynamic_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_dynamic_page_url
    assert_response :success
  end

  test "should create dynamic_page" do
    assert_difference('DynamicPage.count') do
      post dynamic_pages_url, params: { dynamic_page: { name: @dynamic_page.name, pagetype: @dynamic_page.pagetype, title: @dynamic_page.title } }
    end

    assert_redirected_to dynamic_page_url(DynamicPage.last)
  end

  test "should show dynamic_page" do
    get dynamic_page_url(@dynamic_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_dynamic_page_url(@dynamic_page)
    assert_response :success
  end

  test "should update dynamic_page" do
    patch dynamic_page_url(@dynamic_page), params: { dynamic_page: { name: @dynamic_page.name, pagetype: @dynamic_page.pagetype, title: @dynamic_page.title } }
    assert_redirected_to dynamic_page_url(@dynamic_page)
  end

  test "should destroy dynamic_page" do
    assert_difference('DynamicPage.count', -1) do
      delete dynamic_page_url(@dynamic_page)
    end

    assert_redirected_to dynamic_pages_url
  end
end
