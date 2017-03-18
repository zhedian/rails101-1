class MytopicsController < ApplicationController
  before_action :set_mytopic, only: [:show, :edit, :update, :destroy]

  # GET /mytopics
  # GET /mytopics.json
  def index
    @mytopics = Mytopic.all
  end

  # GET /mytopics/1
  # GET /mytopics/1.json
  def show
  end

  # GET /mytopics/new
  def new
    @mytopic = Mytopic.new
  end

  # GET /mytopics/1/edit
  def edit
  end

  # POST /mytopics
  # POST /mytopics.json
  def create
    @mytopic = Mytopic.new(mytopic_params)

    respond_to do |format|
      if @mytopic.save
        format.html { redirect_to @mytopic, notice: 'Mytopic was successfully created.' }
        format.json { render :show, status: :created, location: @mytopic }
      else
        format.html { render :new }
        format.json { render json: @mytopic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytopics/1
  # PATCH/PUT /mytopics/1.json
  def update
    respond_to do |format|
      if @mytopic.update(mytopic_params)
        format.html { redirect_to @mytopic, notice: 'Mytopic was successfully updated.' }
        format.json { render :show, status: :ok, location: @mytopic }
      else
        format.html { render :edit }
        format.json { render json: @mytopic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytopics/1
  # DELETE /mytopics/1.json
  def destroy
    @mytopic.destroy
    respond_to do |format|
      format.html { redirect_to mytopics_url, notice: 'Mytopic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytopic
      @mytopic = Mytopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytopic_params
      params.require(:mytopic).permit(:title, :description)
    end
end
