# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :auth do
    get :login
    get :logout
    get :callback
  end

  get 'welcome/index'

  root 'welcome#index'
end
