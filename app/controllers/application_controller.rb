class ApplicationController < ActionController::Base
  protect_from_forgery

  # See http://guides.rubyonrails.org/i18n.html 

  #before_filter :set_locale

  #def set_locale
  #  I18n.locale = params[:locale]
  #end

  #def default_url_options(options={})
  #  logger.debug "default_url_options is passed options: #{options.inspect}\n"
  #  { locale: I18n.locale }
  #end
end
