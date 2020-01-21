class EmployeesController < ApplicationController

  before_action :find_employee, only:[:update,:show,:destroy,:edit]

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

  def update
      if @employee.update(employee_params)
        flash[:notice] = "Employee's record update was successful! "
        redirect_to employee_path(@employee)
      else
        flash[:notice] = "Failed to update the employee's record!"
        render 'edit'
      end
  end

  def destroy
      if @employee.destroy
        flash[:notice] = "The record has been destroyed successfully!"
        redirect_to employees_path
      else
        flash[:notice] = "Not able to destroy the record!"
        respond_to employee_path(@employee)
      end
  end

  def show

  end

  def edit

  end

  private
  # Strong params function
  def employee_params
    params.require(:employee).permit(:first_name,:last_name,:company_name,:designation)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end

end
