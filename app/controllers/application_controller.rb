# coding: utf-8
class ApplicationController < ActionController::Base
  include Jpmobile::ViewSelector
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_locale

  def set_locale
    I18n.locale = locale
  end

  def locale
    @locale ||= params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    options.merge(locale: locale)
  end

  def caches_action_by_request(app)
    #コントローラー名/アクション名_端末名でアクションキャッシュ
    cache_path="#{app.params[:controller]}/#{app.params[:action]}/#{@locale}"
    if app.request.mobile?
      "#{cache_path}_mobile"
    elsif app.request.smart_phone?
      "#{cache_path}_smart_phone"
    else
      "#{cache_path}_pc"
    end
  end
end
