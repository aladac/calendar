# frozen_string_literal: true

Rails.application.routes.draw do
  get 'auth/login'
  get 'auth/logout'
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
