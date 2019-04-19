Rails.application.routes.draw do
  # match '*path' => 'options_request#preflight', via: :options
  root 'users#new'
  devise_for :users, :controllers => {
    # :sessions      => "users/sessions",
    :registrations => "users/registrations",
    # :passwords     => "users/passwords",
    omniauth_callbacks: "users/omniauth_callbacks" 
  }

  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
end
