class ProgramRelationshipsController < ApplicationController
  before_action :set_program_relationship, only: [:show, :edit, :update, :destroy]

  # GET /program_relationships
  # GET /program_relationships.json
  def index
    @program_relationships = ProgramRelationship.all
  end

  # GET /program_relationships/1
  # GET /program_relationships/1.json
  def show
  end

  # GET /program_relationships/new
  def new
    @program_relationship = ProgramRelationship.new
  end

  # GET /program_relationships/1/edit
  def edit
  end

  # POST /program_relationships
  # POST /program_relationships.json
  def create
    puts('Relationships: ' + program_relationship_params)
    @program_relationship = ProgramRelationship.new(program_relationship_params)

    respond_to do |format|
      if @program_relationship.save
        format.html { redirect_to @program_relationship, notice: 'Program relationship was successfully created.' }
        format.json { render :show, status: :created, location: @program_relationship }
      else
        format.html { render :new }
        format.json { render json: @program_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_relationships/1
  # PATCH/PUT /program_relationships/1.json
  def update
    respond_to do |format|
      if @program_relationship.update(program_relationship_params)
        format.html { redirect_to @program_relationship, notice: 'Program relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_relationship }
      else
        format.html { render :edit }
        format.json { render json: @program_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_relationships/1
  # DELETE /program_relationships/1.json
  def destroy
    @program_relationship.destroy
    respond_to do |format|
      format.html { redirect_to program_relationships_url, notice: 'Program relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_relationship
      @program_relationship = ProgramRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_relationship_params
      params.require(:program_relationship).permit(:parent_id, :child_id)
    end
end
