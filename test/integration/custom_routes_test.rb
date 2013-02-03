require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that the /signin route opens the sign in page" do
  	get '/signin'
  	assert_response :success
  end

  test "that the /signout route opens the sign out page" do
  	get '/signout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that the /signup route opens the sign up page" do
  	get '/signup'
  	assert_response :success
  end

  test "that a profile page works" do
  	get '/jasonseifer'
  	assert_response :success
  end

end
