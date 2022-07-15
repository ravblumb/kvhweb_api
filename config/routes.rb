Rails.application.routes.draw do
  resources :attachments
  resources :addresses
  resources :additional_inspector_assignments
  resources :actions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
