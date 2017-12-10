Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api, defaults: {format: :json} do 
    #api/organizations/   
    resources :organizations 

    #api/workspaces/ 
    resources :workspaces do
      #api/workspaces/branches/
      resources :branches do
        #api/workspaces/branches/rooms/
        resources :rooms
      end 
    end 

    #api/workshops/	 
    resources :workshops

    resources :images 
  end
end
