class ProgramDummiesController < ApplicationController
  before_action :set_program_dummy, only: [:show, :edit, :update, :destroy]

  # GET /program_dummies
  # GET /program_dummies.json
  def index
    @program_dummies = ProgramDummy.all
  end

  # GET /program_dummies/1
  # GET /program_dummies/1.json
  def show
  end

  # GET /program_dummies/new
  def new
    @program_dummy = ProgramDummy.new
  end

  # GET /program_dummies/1/edit
  def edit
  end

  # POST /program_dummies
  # POST /program_dummies.json
  def create
  puts('Program: ' + program_dummy_params)
    @program_dummy = ProgramDummy.new(program_dummy_params)

    respond_to do |format|
      if @program_dummy.save
        format.html { redirect_to @program_dummy, notice: 'Program dummy was successfully created.' }
        format.json { render :show, status: :created, location: @program_dummy }
      else
        format.html { render :new }
        format.json { render json: @program_dummy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_dummies/1
  # PATCH/PUT /program_dummies/1.json
  def update
    respond_to do |format|
      if @program_dummy.update(program_dummy_params)
        format.html { redirect_to @program_dummy, notice: 'Program dummy was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_dummy }
      else
        format.html { render :edit }
        format.json { render json: @program_dummy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_dummies/1
  # DELETE /program_dummies/1.json
  def destroy
    @program_dummy.destroy
    respond_to do |format|
      format.html { redirect_to program_dummies_url, notice: 'Program dummy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_dummy
      @program_dummy = ProgramDummy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_dummy_params
      params.require(:program_dummy).permit(:name)
    end
end
