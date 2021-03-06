require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @title = "TwitterClone"
  end

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@title}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{@title}"
  end

end
