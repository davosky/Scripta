RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to main_app.root_path unless current_user.user_type == "admin"
  end

  config.parent_controller = "ApplicationController"

  config.main_app_name = ["Scripta"]

  require "i18n"
  I18n.default_locale = :it

  config.model "User" do
    visible true
    label "Utente"
    label_plural "Utenti"
  end

  config.model "Assistance" do
    visible true
    label "Assistenza"
    label_plural "Assistenza"
  end

  config.model "Immigration" do
    visible true
    label "Immigrazione"
    label_plural "Immigrazione"
  end

  config.model "Pension" do
    visible true
    label "Pensione"
    label_plural "Pensione"
  end

  config.model "Health" do
    visible true
    label "Salute"
    label_plural "Salute"
  end

  config.model "Attachment" do
    visible true
    label "Allegato"
    label_plural "Allegati"
  end

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
