require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup                                                #how it is calling?????
    @base_title = "ruby is my love"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home |#{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "about |#{@base_title}"
  end

end
