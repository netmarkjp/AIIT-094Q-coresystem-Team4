module AuthenticatedTestHelper
  # Sets the current member in the session from the member fixtures.
  def login_as(member)
    @request.session[:member_id] = member ? members(member).id : nil
  end

  def authorize_as(user)
    @request.env["HTTP_AUTHORIZATION"] = user ? ActionController::HttpAuthentication::Basic.encode_credentials(users(user).login, 'test') : nil
  end
end
