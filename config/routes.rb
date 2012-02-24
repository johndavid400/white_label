WhiteLabel::Application.routes.draw do
  mount Spree::Core::Engine, :at => '/'
end
