class MovEstoquesController < ApplicationController
  before_action :set_mov_estoque, only: [:show, :edit, :update, :destroy]

  # GET /mov_estoques
  # GET /mov_estoques.json
  def index
    @mov_estoques = MovEstoque.all
  end

  # GET /mov_estoques/1
  # GET /mov_estoques/1.json
  def show
  end

  # GET /mov_estoques/new
  def new
    @mov_estoque = MovEstoque.new
  end

  # GET /mov_estoques/1/edit
  def edit
  end

  # POST /mov_estoques
  # POST /mov_estoques.json
  def create
    @mov_estoque = MovEstoque.new(mov_estoque_params)

    respond_to do |format|
      if @mov_estoque.save
        format.html { redirect_to @mov_estoque, notice: 'Mov estoque was successfully created.' }
        format.json { render :show, status: :created, location: @mov_estoque }
      else
        format.html { render :new }
        format.json { render json: @mov_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mov_estoques/1
  # PATCH/PUT /mov_estoques/1.json
  def update
    respond_to do |format|
      if @mov_estoque.update(mov_estoque_params)
        format.html { redirect_to @mov_estoque, notice: 'Mov estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @mov_estoque }
      else
        format.html { render :edit }
        format.json { render json: @mov_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mov_estoques/1
  # DELETE /mov_estoques/1.json
  def destroy
    @mov_estoque.destroy
    respond_to do |format|
      format.html { redirect_to mov_estoques_url, notice: 'Mov estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mov_estoque
      @mov_estoque = MovEstoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mov_estoque_params
      params.require(:mov_estoque).permit(:data, :quantidade, :pessoa_id, :operacao_id, :produto_id)
    end
end
