class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_NAME'].to_s, password: ENV['ADMIN_PASS'].to_s, except: :index
  before_filter :authorize

  def show
  end

end
