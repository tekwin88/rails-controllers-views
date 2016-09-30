class FansController < ApplicationController
  #  before_action :set_fan, only: [:show, :edit, :update, :destroy]
  
  # resources :fans
  # root 'fans#index'
   
   FANS = ['Raymond', 'John', 'David']
    
  # GET /fans
  # GET /fans.json
  
  def index
  #  @description = FANS
  @fans = Fans.all
  end

  # GET /fans/1
  # GET /fans/1.json
  def show
      @fans = 'This is My Showpage'
  end

  # GET /fans/new
  def new
    @fan = 'This is My New Fan Page'  
   # @fan = Fan.new
  end

  # GET /fans/1/edit
  def edit
      @fan = 'This is My Edit Page'  
  end

  # POST /fans
  # POST /fans.json
  def create
    @fan = 'This is My Create Page'
    
  #   @fan = Fan.new(fan.params)
    
  #   respond_to do |format|
  #     if @fan.save
  #       format.html { redirect_to @fan, notice: 'Fan was successfully created.' }
  #       # format.json { render :show, status: :created, location: @fan }
  #     else
  #       format.html { render :new }
  #       # format.json { render json: @fan.errors, status: :unprocessable_entity }
  #     end
  #   end
  end

  # PATCH/PUT /fans/1
  # PATCH/PUT /fans/1.json
  def update
    respond_to do |format|
      if @fan.update(fan_params)
        format.html { redirect_to @fan, notice: 'Fan was successfully updated.' }
        format.json { render :show, status: :ok, location: @fan }
      else
        format.html { render :edit }
        format.json { render json: @fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fans/1
  # DELETE /fans/1.json
  def destroy
    @fan.destroy
    respond_to do |format|
      format.html { redirect_to fans_url, notice: 'Fan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fan
      @fan = Fan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fan_params
      params.require(:fan).permit(:name, :type)
    end
end
