Rails.application.routes.draw do
  resources :employee_apps
  root 'employee_apps#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
