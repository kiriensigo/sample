class ApplicationController < ActionController::Base
include SessionsHelper
end

class SessionsController < ApplicationController
  def new
  end

  def create
    render 'new', status: :unprocessable_entity
  end

  def destroy
  end
end