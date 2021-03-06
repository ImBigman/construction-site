Rails.application.routes.draw do
  root to: 'main#index'

  resources :floors, shallow: true do
    member do
      get :rooms_area
    end
    resources :rooms, shallow: true
  end

  resources :tasks, shallow: true, only: %i[create destroy update] do
    member do
      patch :move
      patch :finish_task
    end
  end

  resources :materials, shallow: true
end
