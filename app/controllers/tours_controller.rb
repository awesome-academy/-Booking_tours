# frozen_string_literal: true

class ToursController < ApplicationController
  def new
    @Tour = Tour.new
  end

  def show
    @Tour = Tour.find_by id: params[:id]
    return if @Tour
    flash.now[:danger] = t "errors.nil_Tour"
    redirect_to root_path
  end

  def create
    @Tour = Tour.new Tour_params
    if @Tour.save
      flash.now[:success] = t "label.welcome"
      redirect_to @Tour
    else
      render :new
    end
  end

  private

  def Tour_params
    params.require(:Tour).permit :name, :email,
                                 :password, :password_cormfirmation
  end
end
