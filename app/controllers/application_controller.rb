class ApplicationController < ActionController::Base
  def blank_add_form
    render({ :template => "calculation_templates/add_form.html.erb" })
  end

  def calculate_add
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @sum_of_num = @first_num + @second_num
    render({ :template => "calculation_templates/add_results.html.erb" })
  end

  def blank_subtract_form
    render({ :template => "calculation_templates/subtract_form.html.erb" })
  end

  def calculate_subtract
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @sub_of_num = @second_num - @first_num
    render({ :template => "calculation_templates/subtract_results.html.erb" })
  end

  def blank_multiply_form
    render({ :template => "calculation_templates/multiply_form.html.erb" })
  end

  def calculate_multiply
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @mult_of_num = @second_num * @first_num
    render({ :template => "calculation_templates/multiply_results.html.erb" })
  end

  def blank_divide_form
    render({ :template => "calculation_templates/divide_form.html.erb" })
  end

  def calculate_divide
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @div_of_num = @first_num / @second_num
    render({ :template => "calculation_templates/divide_results.html.erb" })
  end
end
