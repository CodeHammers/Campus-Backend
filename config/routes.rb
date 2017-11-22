Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api, defaults: {format: :json} do    
    resources :organizations
      resources :branches do
        resources :rooms
      end  
    resources :workshop
  end
end
