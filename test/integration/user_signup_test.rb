require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should redirect new upon unsuccessful signup" do
    get signup_path
    assert_template 'users/new'
    assert_no_difference 'User.count' do 

    
    post users_path,  params: {user: { jina: "wewe", pepe: "me@yuu", password: "eXampple", password_confirmation: "example"
    }}
    end
    
    assert_not flash.empty?
    assert_template 'users/new'
    end

    
   
  
end
