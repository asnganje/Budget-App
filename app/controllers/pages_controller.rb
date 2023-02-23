class PagesController < ApplicationController
  def index
    redirect_to clusters_path if user_signed_in?
  end
end
