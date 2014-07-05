class Admin::AttendancesController < Admin::AdminBaseController
  before_action :set_admin_attendance, only: [:show, :edit, :update, :destroy]

  # GET /admin/attendances
  # GET /admin/attendances.json
  def index
    @admin_attendances = Admin::Attendance.all
  end

  # GET /admin/attendances/1
  # GET /admin/attendances/1.json
  def show
  end

  # GET /admin/attendances/new
  def new
    @admin_attendance = Admin::Attendance.new
  end

  # GET /admin/attendances/1/edit
  def edit
  end

  # POST /admin/attendances
  # POST /admin/attendances.json
  def create
    @admin_attendance = Admin::Attendance.new(admin_attendance_params)

    respond_to do |format|
      if @admin_attendance.save
        format.html { redirect_to @admin_attendance, notice: 'Attendance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_attendance }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/attendances/1
  # PATCH/PUT /admin/attendances/1.json
  def update
    respond_to do |format|
      if @admin_attendance.update(admin_attendance_params)
        format.html { redirect_to @admin_attendance, notice: 'Attendance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/attendances/1
  # DELETE /admin/attendances/1.json
  def destroy
    @admin_attendance.destroy
    respond_to do |format|
      format.html { redirect_to admin_attendances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_attendance
      @admin_attendance = Admin::Attendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_attendance_params
      params.require(:admin_attendance).permit(:staff_id, :time_in, :time_out, :attendance_date, :showed_up)
    end
end
