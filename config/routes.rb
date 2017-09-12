Rails.application.routes.draw do

  root 'pages#index'

  root 'contacts#index'
  resources :contacts do
  end

end
