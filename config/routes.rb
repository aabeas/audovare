Rails.application.routes.draw do

  root to: 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'invitation/hello' => 'invitation#hello'

  post 'twilio/voice', defaults: { format: 'xml'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
