Rails.application.routes.draw do
 
  get 'static/home'

  get 'static/projects'

  get 'static/contact'

 root 'static#home'
end
