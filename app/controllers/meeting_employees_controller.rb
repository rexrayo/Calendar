class MeetingEmployeesController < ApplicationController
  before_action :set_meeting_employee, only: [:show, :edit, :update, :destroy]

  # GET /meeting_employees
  # GET /meeting_employees.json
  def index
    @meeting_employees = MeetingEmployee.all
  end

  # GET /meeting_employees/1
  # GET /meeting_employees/1.json
  def show
  end

  # GET /meeting_employees/new
  def new
    @meeting_employee = MeetingEmployee.new
  end

  # GET /meeting_employees/1/edit
  def edit
  end

  # POST /meeting_employees
  # POST /meeting_employees.json
  def create
    @meeting_employee = MeetingEmployee.new(meeting_employee_params)

    respond_to do |format|
      if @meeting_employee.save
        format.html { redirect_to @meeting_employee, notice: 'Meeting employee was successfully created.' }
        format.json { render :show, status: :created, location: @meeting_employee }
      else
        format.html { render :new }
        format.json { render json: @meeting_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meeting_employees/1
  # PATCH/PUT /meeting_employees/1.json
  def update
    respond_to do |format|
      if @meeting_employee.update(meeting_employee_params)
        format.html { redirect_to @meeting_employee, notice: 'Meeting employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting_employee }
      else
        format.html { render :edit }
        format.json { render json: @meeting_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_employees/1
  # DELETE /meeting_employees/1.json
  def destroy
    @meeting_employee.destroy
    respond_to do |format|
      format.html { redirect_to meeting_employees_url, notice: 'Meeting employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting_employee
      @meeting_employee = MeetingEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_employee_params
      params.require(:meeting_employee).permit(:meeting_id, :employee_id)
    end
end
