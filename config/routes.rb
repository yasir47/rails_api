Rails.application.routes.draw do

  namespace :api , defaults: { format: :json } do
    resources :users, except: [:new, :edit]
    resources :cases, except: [:new, :edit]
    # dashboard
    namespace :dashboard do
      get 'filters' , to: 'dashboard#filters'
    end
  end

end
