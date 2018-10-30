class SessionsController < ApplicationController
  def new
  end

  def create
    fighter = Fighter.find_by_name(params[:name])
    if fighter and fighter.authenticate(params[:password])
      session[:fighter_id] = fighter.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session[:fighter_id] = nil
    redirect_to root_path
  end
end
