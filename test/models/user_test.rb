require 'test_helper'


class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(jina: "Robin", pepe: "robin@gmail.com", password: "lawrence", 
                     password_confirmation: "lawrence")
  end
  test "jina should be present" do
    @user.jina = " "
    assert_not @user.valid?
  end
  test "pepe should be present" do
    @user.pepe = " "
    assert_not @user.valid?
  end
  test "password should have minimum length" do
    @user.password = "c" * 5
    assert_not @user.valid?
  end
  test "email should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be identical to password confirmation"do
    !@user.password = @user.password_confirmation
    assert_not  @user.valid?
  end
end
