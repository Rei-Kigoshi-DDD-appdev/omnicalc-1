Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "blank_square_form" })
  
  get("/square/results", { :controller =>"application", :action => "square_results"})


  # Write your routes above this line
  # =================================

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
