class WorktypesController < ApplicationController
  before_action :set_worktype, only: %i[ show edit update destroy ]

  # GET /worktypes or /worktypes.json
  def index
    @worktypes = Worktype.all
  end

  # GET /worktypes/1 or /worktypes/1.json
  def show
  end

  # GET /worktypes/new
  def new
    @worktype = Worktype.new
  end

  # GET /worktypes/1/edit
  def edit
  end

  # POST /worktypes or /worktypes.json
  def create
    @worktype = Worktype.new(worktype_params)

    respond_to do |format|
      if @worktype.save
        format.html { redirect_to @worktype, notice: "Worktype was successfully created." }
        format.json { render :show, status: :created, location: @worktype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @worktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worktypes/1 or /worktypes/1.json
  def update
    respond_to do |format|
      if @worktype.update(worktype_params)
        format.html { redirect_to @worktype, notice: "Worktype was successfully updated." }
        format.json { render :show, status: :ok, location: @worktype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @worktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worktypes/1 or /worktypes/1.json
  def destroy
    @worktype.destroy
    respond_to do |format|
      format.html { redirect_to worktypes_url, notice: "Worktype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worktype
      @worktype = Worktype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worktype_params
      params.require(:worktype).permit(:type)
    end
end
