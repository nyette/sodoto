# frozen_string_literal: true

Rails.application.routes.draw do
  root 'video_uploads#index'

  resources :video_uploads do
    resources :comments
  end
end
