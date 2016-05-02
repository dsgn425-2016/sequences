Rails.application.routes.draw do
  get("/:urlsuffix", :controller => 'sequence', :action => 'user_input')
end
