Rails.application.routes.draw do
  resources :contacts do
    resources :contact_info do
      resources :contact_info_type
    end
    resources :address_info
    resources :contact_type
  end
end
