class TransacsController < ApplicationController
  before_action :set_transac, only: %i[ show edit update destroy ]

  # GET /transacs or /transacs.json
  def index
    @transacs = Transac.where(user: current_user)
  end

  # GET /transacs/1 or /transacs/1.json
  def show
  end

  # GET /transacs/new
  def new
    @transac = Transac.new
    @categoties = Category.where(user: current_user)
  end

  # GET /transacs/1/edit
  def edit
  end

  # POST /transacs or /transacs.json
  def create
    @transac = Transac.new(transac_params)

    @transac.user = current_user
    @transac.save
    create_categ_transacs unless params[:categories].blank?

    respond_to do |format|
      if @transac.save
        format.html { redirect_to transac_url(@transac), notice: "Transac was successfully created." }
        format.json { render :show, status: :created, location: @transac }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transacs/1 or /transacs/1.json

  # DELETE /transacs/1 or /transacs/1.json
  def destroy
    @transac.destroy

    respond_to do |format|
      format.html { redirect_to transacs_url, notice: "Transac was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transac
      @transac = Transac.find(params[:id])
    end
    
    def create_categ_transacs
      params[:categories].each do |k, _v|
        CategoriesTransac.create(category: Category.find(k), transacs: @transacs)
      end
    end

    # Only allow a list of trusted parameters through.
    def transac_params
      params.require(:transac).permit(:name, :amount, :category)
    end
end
