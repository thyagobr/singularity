class RemarksController < ApplicationController
  before_action :set_remark, only: [:show, :edit, :update, :destroy]

  # GET /remarks
  def index
    @remarks = Remark.all
  end

  # GET /remarks/1
  def show
  end

  # GET /remarks/new
  def new
    @remark = Remark.new
  end

  # GET /remarks/1/edit
  def edit
  end

  # POST /remarks
  def create
    @remark = Remark.new(remark_params)

    if @remark.save
      redirect_to @remark, notice: 'Remark was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /remarks/1
  def update
    if @remark.update(remark_params)
      redirect_to @remark, notice: 'Remark was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /remarks/1
  def destroy
    @remark.destroy
    redirect_to remarks_url, notice: 'Remark was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remark
      @remark = Remark.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def remark_params
      params.require(:remark).permit(:references, :user_id, :text)
    end
end
