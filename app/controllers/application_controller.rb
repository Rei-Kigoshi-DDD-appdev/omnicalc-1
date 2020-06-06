class ApplicationController < ActionController::Base
  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    #Parameters: {"hamster"=>"11"}
    @num = params.fetch("hamster").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb" })
  end


end
