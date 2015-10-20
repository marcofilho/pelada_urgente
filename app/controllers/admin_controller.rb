class AdminController < ApplicationController
  before_action :check_access

  private
  def check_access
    redirect_to root_path, error: "Você não tem permissão para acessar essa página" if !current_user || !current_user.admin?
  end
end
