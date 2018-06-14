Rails.application.routes.draw do
  resources :meeting_employees
  resources :meetings do
    collection do 
      get 'json_meeting'
    end
  end
  resources :employees

  get 'index' => 'welcome#index'
  # get 'welcome/index'
  get 'welcome/new'
  root 'welcome#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
