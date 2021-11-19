class EmployeeAppsController < ApplicationController
  before_action :set_employee_app, only: [:show, :edit, :update, :destroy]

  # GET /employee_apps
  # GET /employee_apps.json
  def index
    @employee_apps = EmployeeApp.all
  end

  # GET /employee_apps/1
  # GET /employee_apps/1.json
  def show
  end

  # GET /employee_apps/new
  def new
    @employee_app = EmployeeApp.new
  end

  # GET /employee_apps/1/edit
  def edit
  end

  # POST /employee_apps
  # POST /employee_apps.json
  def create
    @employee_app = EmployeeApp.new(employee_app_params)

    respond_to do |format|
      if @employee_app.save
        format.html { redirect_to @employee_app, notice: 'Employee app was successfully created.' }
        format.json { render :show, status: :created, location: @employee_app }
      else
        format.html { render :new }
        format.json { render json: @employee_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_apps/1
  # PATCH/PUT /employee_apps/1.json
  def update
    respond_to do |format|
      if @employee_app.update(employee_app_params)
        format.html { redirect_to @employee_app, notice: 'Employee app was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_app }
      else
        format.html { render :edit }
        format.json { render json: @employee_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_apps/1
  # DELETE /employee_apps/1.json
  def destroy
    @employee_app.destroy
    respond_to do |format|
      format.html { redirect_to employee_apps_url, notice: 'Employee app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_app
      @employee_app = EmployeeApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_app_params
      params.require(:employee_app).permit(:employee_name, :age, :gender, :designation)
    end
end
