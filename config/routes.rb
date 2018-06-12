Rails.application.routes.draw do
  # get 'meetings/json_meeting' => 'meeting#json_meeting', :default => {:format => :json}, :format => false
  resources :meetings do
  	collection do 
  		get 'json_meeting'
  	end
  end
  get 'events/index'
  get 'events/create'
  get 'events/edit'
  get 'events/new'
  resources :events
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
