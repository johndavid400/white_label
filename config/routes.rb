WhiteLabel::Application.routes.draw do
  get "home/index"

  mount Spree::Core::Engine, :at => '/'
end
