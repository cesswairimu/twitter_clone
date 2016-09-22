require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
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
  test "should save user on successful signup" do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post users_path, params: {
        user: {
          jina:"Nitram", pepe: "nitram@gmail.com", password: "cessitoo", password_confirmation: "cessitoo"
        }
      }
    end
    follow_redirect!
    assert_template 'users/show'
  end

    
   
  
end
