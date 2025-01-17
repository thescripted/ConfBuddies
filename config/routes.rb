# frozen_string_literal: true

Rails.application.routes.draw do
  root "events#index"

  devise_for :users

  resources :events
  resources :event_attendees
  resources :friendships
  resources :profiles
  resources :users, except: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
