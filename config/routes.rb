Rails.application.routes.draw do
self.get("/rock", { :controller => "application", :action => "play_rock" })



end
