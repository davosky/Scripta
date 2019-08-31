class AssistancesController < ApplicationController
  before_action :set_assistance, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  def index
    @assistances = Assistance.all.order(position: "ASC")
  end

  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: "assistances/show", pdf: "pdfprintstyle" }
    end
  end

  def new
    @assistance = Assistance.new
  end

  def edit
  end

  def create
    @assistance = Assistance.new(assistance_params)
    respond_to do |format|
      if @assistance.save
        format.html { redirect_to @assistance, notice: "Assistance was successfully created." }
        format.json { render :show, status: :created, location: @assistance }
      else
        format.html { render :new }
        format.json { render json: @assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @assistance.update(assistance_params)
        format.html { redirect_to @assistance, notice: "Assistance was successfully updated." }
        format.json { render :show, status: :ok, location: @assistance }
      else
        format.html { render :edit }
        format.json { render json: @assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @assistance.destroy
    respond_to do |format|
      format.html { redirect_to assistances_url, notice: "Assistance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_assistance
    @assistance = Assistance.find(params[:id])
  end

  def assistance_params
    params.require(:assistance).permit(:position, :name, :title, :content, :note, :creation_date, :revision_date, attachments_attributes: Attachment.attribute_names.map(&:to_sym).push(:_destroy))
  end
end
