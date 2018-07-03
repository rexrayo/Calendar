Rails.application.routes.draw do
  resources :meeting_employees
  resources :meetings do
    collection do 
      get 'json_meeting'
      # get 'json_test'
    end
  end
  resources :employees do
    collection do
      get 'json_employee'
    end
  end
  
  get 'meetings/:id/json_employee', to: 'meetings#json_employee'
  get 'meetings/:id/json_test', to: 'meetings#json_test'

  get 'index' => 'welcome#index'
  get 'index' => 'meetings#index'
  get 'welcome/new'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
