class StaffsController < ApplicationController
  def new
    @staff = Staff.new
  end

  def index
    @staffs = Staff.alphabetize
    render :json=> @staffs
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      render :json=> @staff
    else
      render :new
    end
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def edit
  end

  def admin
    @booked = Client.appts_admin
    @most_popular = Staff.most_popular
    
  end

private

  def staff_params
    params.require(:staff).permit(:name, :bio)
  end
end
