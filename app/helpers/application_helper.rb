module ApplicationHelper
  def i18n_url_for(options)
    if options[:locale] == I18n.default_locale
      options[:locale] = nil
    end
    url_for(options)
  end
end
