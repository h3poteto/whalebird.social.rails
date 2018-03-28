module ApplicationHelper
  def i18n_url_for(options)
    options[:locale] = nil if options[:locale] == I18n.default_locale
    url_for(options)
  end
end
