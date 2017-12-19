Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api, defaults: {format: :json} do 
    
    #api/organizations/   
    resources :organizations do 
      #api/organizations/reviews
      resources :reviews
      #api/organizations/workshops
      resources :workshops do 
        #api/organizations/workshops/reviews
        resources :reviews
        #api/organizations/workshops/id/images
        resources :images 
      end
      #api/organizations/events
      resources :events do 
        #api/organizations/events/id/images
        resources :images 
      end  
      #api/organizations/images
      resources :images 
    end 

    #api/workspaces/ 
    resources :workspaces do
      #api/workspaces/branches
      resources :branches do
        #api/workspaces/branches/id/rooms
        resources :rooms do 
          #api/workspaces/branches/id/rooms/id/images
          resources :images
        end
        #api/workspaces/branches/reviews
        resources :reviews
        #api/workspaces/branches/workshops
        resources :workshops do
            #api/workspaces/branches/workshops/reviews
            resources :reviews
        end
        #api/workspaces/events
        resources :events
      end
    end 

    #api/users
    resources :users do
      #api/users/positions
      resources :positions
      resources :reservations
    end

    get 'auth/workspaces', to: 'workspaces#index_secure'
    get 'auth/organizations', to: 'organizations#index_secure'
    get 'auth/branches', to: 'branches#index_secure'
    get 'grant/organiztion' , to: 'positions#grant_acess_to_org'

  end
end
