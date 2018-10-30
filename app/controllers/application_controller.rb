class ApplicationController < ActionController::Base
  helper_method :current_fighter

  def current_fighter
    @current_fighter ||= Fighter.find_by(id: session[:fighter_id])
  end
end
