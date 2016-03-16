class AdminController < ApplicationController

     before_action :authenticate_company!

   layout "dash"

def index

end

  def manage_users
   @users = User.all
  end

end
