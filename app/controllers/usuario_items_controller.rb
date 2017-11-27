class UsuarioItemsController < ApplicationController
  before_action :set_usuario_item, only: [:show, :edit, :update, :destroy]

  # GET /usuario_items
  # GET /usuario_items.json
  def index
    @usuario_items = UsuarioItem.all
  end

  # GET /usuario_items/1
  # GET /usuario_items/1.json
  def show
  end

  # GET /usuario_items/new
  def new
    @usuario_item = UsuarioItem.new
  end

  # GET /usuario_items/1/edit
  def edit
  end

  # POST /usuario_items
  # POST /usuario_items.json
  def create
    @usuario_item = UsuarioItem.new(usuario_item_params)

    respond_to do |format|
      if @usuario_item.save
        format.html { redirect_to @usuario_item, notice: 'Usuario item was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_item }
      else
        format.html { render :new }
        format.json { render json: @usuario_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_items/1
  # PATCH/PUT /usuario_items/1.json
  def update
    respond_to do |format|
      if @usuario_item.update(usuario_item_params)
        format.html { redirect_to @usuario_item, notice: 'Usuario item was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_item }
      else
        format.html { render :edit }
        format.json { render json: @usuario_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_items/1
  # DELETE /usuario_items/1.json
  def destroy
    @usuario_item.destroy
    respond_to do |format|
      format.html { redirect_to usuario_items_url, notice: 'Usuario item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_item
      @usuario_item = UsuarioItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_item_params
      params.require(:usuario_item).permit(:item_id, :assignment_id)
    end
end
