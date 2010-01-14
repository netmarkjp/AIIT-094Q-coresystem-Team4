require File.dirname(__FILE__) + '/../test_helper'
require 'testers_controller'

# Re-raise errors caught by the controller.
class TestersController; def rescue_action(e) raise e end; end

class TestersControllerTest < Test::Unit::TestCase
  # Be sure to include AuthenticatedTestHelper in test/test_helper.rb instead
  # Then, you can remove it from this and the units test.
  include AuthenticatedTestHelper

  fixtures :testers

  def setup
    @controller = TestersController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_allow_signup
    assert_difference 'Tester.count' do
      create_tester
      assert_response :redirect
    end
  end

  def test_should_require_login_on_signup
    assert_no_difference 'Tester.count' do
      create_tester(:login => nil)
      assert assigns(:tester).errors.on(:login)
      assert_response :success
    end
  end

  def test_should_require_password_on_signup
    assert_no_difference 'Tester.count' do
      create_tester(:password => nil)
      assert assigns(:tester).errors.on(:password)
      assert_response :success
    end
  end

  def test_should_require_password_confirmation_on_signup
    assert_no_difference 'Tester.count' do
      create_tester(:password_confirmation => nil)
      assert assigns(:tester).errors.on(:password_confirmation)
      assert_response :success
    end
  end

  def test_should_require_email_on_signup
    assert_no_difference 'Tester.count' do
      create_tester(:email => nil)
      assert assigns(:tester).errors.on(:email)
      assert_response :success
    end
  end
  

  

  protected
    def create_tester(options = {})
      post :create, :tester => { :login => 'quire', :email => 'quire@example.com',
        :password => 'quire', :password_confirmation => 'quire' }.merge(options)
    end
end
