# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todos, except: [:show, :index]

  root 'todos#index'
end
