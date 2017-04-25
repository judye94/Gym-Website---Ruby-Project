require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "DatGym Fitness Studio"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get membership" do
    get static_pages_membership_url
    assert_response :success
     assert_select "title", "Membership | #{@base_title}"
  end

  test "should get classes" do
    get static_pages_classes_url
    assert_response :success
     assert_select "title", "Classes | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
     assert_select "title", "Contact | #{@base_title}"
  end

end
