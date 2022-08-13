class CategoriesTransacsController < ApplicationController
  before_action :set_categories_transac, only: %i[ show edit update destroy ]

  # GET /categories_transacs or /categories_transacs.json
  def index
    @categories_transacs = CategoriesTransac.all
  end

  # GET /categories_transacs/1 or /categories_transacs/1.json
  def show
  end

  # GET /categories_transacs/new
  def new
    @categories_transac = CategoriesTransac.new
  end

  # GET /categories_transacs/1/edit
  def edit
  end

  # POST /categories_transacs or /categories_transacs.json
  def create
    @categories_transac = CategoriesTransac.new(categories_transac_params)

    respond_to do |format|
      if @categories_transac.save
        format.html { redirect_to categories_transac_url(@categories_transac), notice: "Categories transac was successfully created." }
        format.json { render :show, status: :created, location: @categories_transac }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categories_transac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_transacs/1 or /categories_transacs/1.json
  def update
    respond_to do |format|
      if @categories_transac.update(categories_transac_params)
        format.html { redirect_to categories_transac_url(@categories_transac), notice: "Categories transac was successfully updated." }
        format.json { render :show, status: :ok, location: @categories_transac }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categories_transac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_transacs/1 or /categories_transacs/1.json
  def destroy
    @categories_transac.destroy

    respond_to do |format|
      format.html { redirect_to categories_transacs_url, notice: "Categories transac was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_transac
      @categories_transac = CategoriesTransac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categories_transac_params
      params.require(:categories_transac).permit(:transacs_id, :categories_id)
    end
end
