class RelatedProgramsController < ApplicationController
  before_action :set_related_program, only: [:show, :edit, :update, :destroy]

  # GET /related_programs
  # GET /related_programs.json
  def index
    @related_programs = RelatedProgram.all
  end

  # GET /related_programs/1
  # GET /related_programs/1.json
  def show
  end

  # GET /related_programs/new
  def new
    @related_program = RelatedProgram.new
  end

  # GET /related_programs/1/edit
  def edit
  end

  # POST /related_programs
  # POST /related_programs.json
  def create
    @related_program = RelatedProgram.new(related_program_params)

    respond_to do |format|
      if @related_program.save
        format.html { redirect_to @related_program, notice: 'Related program was successfully created.' }
        format.json { render :show, status: :created, location: @related_program }
      else
        format.html { render :new }
        format.json { render json: @related_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /related_programs/1
  # PATCH/PUT /related_programs/1.json
  def update
    respond_to do |format|
      if @related_program.update(related_program_params)
        format.html { redirect_to @related_program, notice: 'Related program was successfully updated.' }
        format.json { render :show, status: :ok, location: @related_program }
      else
        format.html { render :edit }
        format.json { render json: @related_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /related_programs/1
  # DELETE /related_programs/1.json
  def destroy
    @related_program.destroy
    respond_to do |format|
      format.html { redirect_to related_programs_url, notice: 'Related program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_related_program
      @related_program = RelatedProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def related_program_params
      params.require(:related_program).permit(:parent, :child)
    end
end
