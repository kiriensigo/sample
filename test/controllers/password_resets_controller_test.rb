require 'test_helper'

class PasswordResetsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
    @user.create_reset_digest
  end

  test "should get edit" do
    get edit_password_reset_path(@user.reset_token, email: @user.email)
    assert_response :success
  end
end