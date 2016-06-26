Rails.application.routes.draw do
  scope module: :lunar_shell do
    namespace :satellites do
      resource :about, only: []
      resource :projects, only: []
      resource :yodaism, only: []
    end
  end
  mount LunarShell::Engine => "/"
end
