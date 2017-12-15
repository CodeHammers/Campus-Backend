Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api, defaults: {format: :json} do 
    
    #api/organizations/   
    resources :organizations do 
      #api/organizations/reviews
      resources :reviews
    end 

    #api/workspaces/ 
    resources :workspaces do
      #api/workspaces/branches/
      resources :branches do
        #api/workspaces/branches/rooms/
        resources :rooms
        #api/workspaces/branches/reviews
        resources :reviews
      end 
    end 

    #api/workshops/	 
    resources :workshops do
      #api/workshops/reviews
      resources :reviews
    end

    resources :images 

    #api/users
    resources :users do
      #api/users/positions
      resources :positions
    end

    get 'auth/workspaces', to: 'workspaces#index_secure'
    get 'auth/organizations', to: 'organizations#index_secure'
    get 'auth/branches', to: 'branches#index_secure'

  end
end
