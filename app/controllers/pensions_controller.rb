class PensionsController < ApplicationController
  before_action :set_pension, only: [:show, :edit, :update, :destroy]

  def index
    @pensions = Pension.all
  end

  def show
    respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'pensions/show', pdf: 'pdfprintstyle' }
      end
  end

  def new
    @pension = Pension.new
  end

  def edit
  end

  def create
    @pension = Pension.new(pension_params)

    respond_to do |format|
      if @pension.save
        format.html { redirect_to @pension, notice: 'Pension was successfully created.' }
        format.json { render :show, status: :created, location: @pension }
      else
        format.html { render :new }
        format.json { render json: @pension.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pension.update(pension_params)
        format.html { redirect_to @pension, notice: 'Pension was successfully updated.' }
        format.json { render :show, status: :ok, location: @pension }
      else
        format.html { render :edit }
        format.json { render json: @pension.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pension.destroy
    respond_to do |format|
      format.html { redirect_to pensions_url, notice: 'Pension was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pension
      @pension = Pension.find(params[:id])
    end

    def pension_params
      params.require(:pension).permit(:position, :name, :title, :content, :note, :creation_date, :revision_date)
    end
end
