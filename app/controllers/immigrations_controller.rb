class ImmigrationsController < ApplicationController
  before_action :set_immigration, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  def index
    @immigrations = Immigration.all.order(position: "ASC")
  end

  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: "immigrations/show", pdf: "pdfprintstyle" }
    end
  end

  def new
    @immigration = Immigration.new
  end

  def edit
  end

  def create
    @immigration = Immigration.new(immigration_params)

    respond_to do |format|
      if @immigration.save
        format.html { redirect_to @immigration, notice: "Immigration was successfully created." }
        format.json { render :show, status: :created, location: @immigration }
      else
        format.html { render :new }
        format.json { render json: @immigration.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @immigration.update(immigration_params)
        format.html { redirect_to @immigration, notice: "Immigration was successfully updated." }
        format.json { render :show, status: :ok, location: @immigration }
      else
        format.html { render :edit }
        format.json { render json: @immigration.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @immigration.destroy
    respond_to do |format|
      format.html { redirect_to immigrations_url, notice: "Immigration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_immigration
    @immigration = Immigration.find(params[:id])
  end

  def immigration_params
    params.require(:immigration).permit(:position, :name, :title, :content, :note, :creation_date, :revision_date, attachments_attributes: Attachment.attribute_names.map(&:to_sym).push(:_destroy))
  end
end
