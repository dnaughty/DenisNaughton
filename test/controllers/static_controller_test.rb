require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Denis Naughton"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get projects" do
    get static_projects_url
    assert_response :success
    assert_select "title", "Projects | #{@base_title}"
  end

  test "should get contact" do
    get static_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
