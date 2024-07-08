class ApplicationController < ActionController::Base

  def new
  end

  def create
    render 'new', status: :unprocessable_entity
  end

  def destroy
  end
end