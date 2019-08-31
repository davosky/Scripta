class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]

  def show
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def set_attachment
    @attachment = Attachment.find(params[:id])
  end

  def attachment_params
    params.require(:attachment).permit(:assistance_id, :health_id, :immigration_id, :pension_id, :name, :publication_date, :pdf)
  end
end
