class EmployeesController < ApplicationController
  def index
    @employees=Employee.all
  end
  
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      flash[:notice] = "Employee record creation successful!"
      redirect_to employees_path  # redirecting to index point
    else
      render 'new'
    end
  end


  private
  
  # Strong params function
  def employee_params
    params.require(:employee).permit(:first_name,:last_name,:company_name,:designation)
  end
end
