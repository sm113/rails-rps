Rails.application.routes.draw do
get("/", { :controller => "app", :action => "homepage"})
get("/rock", { :controller => "app", :action => "play_rock"})
get("/paper", { :controller => "app", :action => "play_paper"})
get("/scissors", { :controller => "app", :action => "play_scissors"})
end
