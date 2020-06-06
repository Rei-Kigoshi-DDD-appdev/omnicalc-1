Rails.application.routes.draw do
 
 #square
  get("/square/new", { :controller => "application", :action => "blank_square_form" })

  get("/square/results", { :controller =>"application", :action => "calculate_square"})

#random
  get("random/new", { :controller =>"application", :action => "blank_random_form"})

  get("random/results", { :controller =>"application", :action => "calculate_random"})

#roots
  get("/square_root/new", { :controller =>"application", :action => "blank_root_form"})

  get("/square_root/results", { :controller =>"application", :action => "calculate_root"})

 #payments 
  get("/payment/new", { :controller =>"application", :action => "blank_payment_form"})

  get("/payment/results", { :controller =>"application", :action => "calculate_payment"})
  


  # Write your routes above this line
  # =================================

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
