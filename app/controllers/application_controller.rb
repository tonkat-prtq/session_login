class ApplicationController < ActionController::Base
  protect_form_forgery with: : exception
  include SessionHelpler
end
