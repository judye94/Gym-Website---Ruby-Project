require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "DatGym Fitness Studio"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get membership" do
   get membership_path
    assert_response :success
     assert_select "title", "Membership | #{@base_title}"
  end

  test "should get classes" do
    get classes_path
    assert_response :success
     assert_select "title", "Classes | #{@base_title}"
  end

  test "should get contact" do
   get contact_path
    assert_response :success
     assert_select "title", "Contact | #{@base_title}"
  end
  
   test "should get admin" do
    get admin_path
    assert_response :success
    assert_select "title", "Admin |  #{@base_title} "
  end

end
