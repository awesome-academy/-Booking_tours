# frozen_string_literal: true

class SessionsController < ApplicationController
  include SessionsHelper
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate params[:session][:password]
      log_in user
      check_remember user
      redirect_to user
    else
      flash.now[:danger] = t "errors.invalid_user"
      render :new
    end
  end

  def check_remember(user)
    return remember user if params[:session][:remember_me] == Settings.checked

    forget user
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
