Rails.application.routes.draw do
  root to: 'main#index'

  resources :floors, shallow: true do
    resources :rooms, shallow: true
  end
    # resources :subscriptions, shallow: true, only: %i[create destroy]
  resources :tasks, shallow: true, only: %i[create destroy update] do
    # member do
    #   patch :make_better
    #   put :make_better
    # end
  end
end
