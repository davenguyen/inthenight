Rails.application.routes.draw do
  scope module: :lunar_shell do
    namespace :satellites do
      resource :yodaism, only: []
    end
  end
  mount LunarShell::Engine => "/"
end
