Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /en|vi/ do
    root 'home#index'
    resources :home
    resources :contacts
    resources :vcards
    get 'download_qrcode', to: "vcards#download_qrcode"
  end
end
