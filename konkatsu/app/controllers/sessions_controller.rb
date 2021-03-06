# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController

  # render new.rhtml
  def new
  end

  def create
    self.current_member = Member.authenticate(params[:login], params[:password])
    if logged_in?
      if params[:remember_me] == "1"
        current_member.remember_me unless current_member.remember_token?
        cookies[:auth_token] = { :value => self.current_member.remember_token , :expires => self.current_member.remember_token_expires_at }
      end
      redirect_back_or_default('/')
      flash[:notice] = "Logged in successfully"
    else
      flash[:error] = "Member ID または Password に誤りがあります。"
      render :action => 'new'
    end
  end

  def destroy
    self.current_member.forget_me if logged_in?
    cookies.delete :auth_token
    reset_session
    flash[:notice] = "You have been logged out."
    redirect_back_or_default('/')
  end

end
