class OnetimetokensController < ApplicationController
  before_action :set_onetimetoken, only: [:show, :edit, :update, :destroy]

  # GET /onetimetokens
  # GET /onetimetokens.json
  def index
    @onetimetokens = Onetimetoken.all
  end

  # GET /onetimetokens/1
  # GET /onetimetokens/1.json
  def show
  end

  # GET /onetimetokens/new
  def new
    @onetimetoken = Onetimetoken.new
  end

  # GET /onetimetokens/1/edit
  def edit
  end

  # POST /onetimetokens
  # POST /onetimetokens.json
  def create
    @onetimetoken = Onetimetoken.new(onetimetoken_params)

    respond_to do |format|
      if @onetimetoken.save
        format.html { redirect_to @onetimetoken, notice: 'Onetimetoken was successfully created.' }
        format.json { render :show, status: :created, location: @onetimetoken }
      else
        format.html { render :new }
        format.json { render json: @onetimetoken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onetimetokens/1
  # PATCH/PUT /onetimetokens/1.json
  def update
    respond_to do |format|
      if @onetimetoken.update(onetimetoken_params)
        format.html { redirect_to @onetimetoken, notice: 'Onetimetoken was successfully updated.' }
        format.json { render :show, status: :ok, location: @onetimetoken }
      else
        format.html { render :edit }
        format.json { render json: @onetimetoken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onetimetokens/1
  # DELETE /onetimetokens/1.json
  def destroy
    @onetimetoken.destroy
    respond_to do |format|
      format.html { redirect_to onetimetokens_url, notice: 'Onetimetoken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onetimetoken
      @onetimetoken = Onetimetoken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onetimetoken_params
      params.require(:onetimetoken).permit(:title, :content)
    end
end
