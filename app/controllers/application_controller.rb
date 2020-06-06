class ApplicationController < ActionController::Base
  
  #Square
  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    #Parameters: {"hamster"=>"11"}
    @num = params.fetch("hamster").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  #Random
  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def calculate_random
    #Parameters: {"randmin"=>"333", "randmax"=>"409"}
    @min_number = params.fetch("randmin").to_f
    @max_number = params.fetch("randmax").to_f
    @rand_number = rand(@min_number..@max_number)

    render({ :template => "calculation_templates/random_results.html.erb" })
  end

  #Square Root
  def blank_root_form
    render({ :template => "calculation_templates/root_form.html.erb" })
  end

  def calculate_root

    #Parameters: {"burdock"=>"121"}
    @root_num = params.fetch("burdock").to_f
    @square_root_of_num = @root_num ** 0.5
    render({ :template => "calculation_templates/root_results.html.erb" })
  end



end
