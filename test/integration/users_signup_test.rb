requre 'test_helper'

class UserSigunupTest < ActionDispatch::IntegrationTest
  test 'valid signup information' do
    assert_difference 'User.count', 1
    post users_path, params: { user: { name: 'Example User',
                                       email: 'user@example.com',
                                       password: 'password',
                                       password_confirmation: 'password' } }
  end
  follow_redirect!
  assert_template 'users/show'
  assert_not flash.empty?
  assert_match 'Welcome', response.body
end
