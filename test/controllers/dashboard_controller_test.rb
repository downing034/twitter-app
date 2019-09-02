require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Twitter App"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get dashboard_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get dashboard_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get dashboard_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
