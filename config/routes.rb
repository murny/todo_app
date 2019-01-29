# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todos, except: [:show]

  root "todos#index"
end
