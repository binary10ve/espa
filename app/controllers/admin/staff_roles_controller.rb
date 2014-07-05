class Admin::StaffRolesController < ApplicationController
  before_action :set_staff_role, only: [:show, :edit, :update, :destroy]

  # GET /staff_roles
  # GET /staff_roles.json
  def index
    @staff_roles = StaffRole.all
  end

  # GET /staff_roles/1
  # GET /staff_roles/1.json
  def show
  end

  # GET /staff_roles/new
  def new
    @staff_role = StaffRole.new
  end

  # GET /staff_roles/1/edit
  def edit
  end

  # POST /staff_roles
  # POST /staff_roles.json
  def create
    @staff_role = StaffRole.new(staff_role_params)

    respond_to do |format|
      if @staff_role.save
        format.html { redirect_to @staff_role, notice: 'Staff role was successfully created.' }
        format.json { render action: 'show', status: :created, location: @staff_role }
      else
        format.html { render action: 'new' }
        format.json { render json: @staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_roles/1
  # PATCH/PUT /staff_roles/1.json
  def update
    respond_to do |format|
      if @staff_role.update(staff_role_params)
        format.html { redirect_to @staff_role, notice: 'Staff role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_roles/1
  # DELETE /staff_roles/1.json
  def destroy
    @staff_role.destroy
    respond_to do |format|
      format.html { redirect_to staff_roles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_role
      @staff_role = StaffRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_role_params
      params.require(:staff_role).permit(:staff_id, :role_id)
    end
end
