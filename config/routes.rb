# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  get "home/index"
  get "home/howto"
  get "home/about"
  resources :assistances
  resources :immigrations
  resources :pensions
  resources :healths
  resources :attachments
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  devise_for :users
end
