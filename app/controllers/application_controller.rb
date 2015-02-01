class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :load_nav_duties

  def load_nav_duties
    @nav_duties = Duty.all.group_by(&:category)
  end
end
