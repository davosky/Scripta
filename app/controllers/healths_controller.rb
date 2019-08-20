class HealthsController < ApplicationController
  before_action :set_health, only: [:show, :edit, :update, :destroy]

  def index
    @healths = Health.all
  end

  def show
    respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'healths/show', pdf: 'pdfprintstyle' }
      end
  end

  def new
    @health = Health.new
  end

  def edit
  end

  def create
    @health = Health.new(health_params)

    respond_to do |format|
      if @health.save
        format.html { redirect_to @health, notice: 'Health was successfully created.' }
        format.json { render :show, status: :created, location: @health }
      else
        format.html { render :new }
        format.json { render json: @health.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @health.update(health_params)
        format.html { redirect_to @health, notice: 'Health was successfully updated.' }
        format.json { render :show, status: :ok, location: @health }
      else
        format.html { render :edit }
        format.json { render json: @health.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @health.destroy
    respond_to do |format|
      format.html { redirect_to healths_url, notice: 'Health was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_health
      @health = Health.find(params[:id])
    end

    def health_params
      params.require(:health).permit(:position, :name, :title, :content, :note, :creation_date, :revision_date)
    end
end
