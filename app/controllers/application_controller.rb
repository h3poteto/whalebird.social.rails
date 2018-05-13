# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :redirect_locale
  before_action :set_locale

  helper_method :i18n_url_for

  # パラメータでlocale指定があった場合にはそれを優先する
  def set_locale
    I18n.locale = locale
  end

  def locale
    @locale ||= all_permit_params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    options.merge(locale: locale)
  end

  # パラメータでlocaleの指定がない場合はaccept_languageに従う
  def redirect_locale
    return unless request.get?
    return unless all_permit_params[:locale].nil?
    locale = locale_in_accept_language
    redirect_to i18n_url_for(all_permit_params.merge(locale: locale.to_s)) if locale.present?
  end

  def locale_in_accept_language
    request.env['HTTP_ACCEPT_LANGUAGE']
      .to_s.split(',')
      .map{ |_| _[0..1].to_sym }
      .select { |_| I18n::available_locales.include?(_) }
      .first
  end

  def i18n_url_for(options)
    url_for(options)
  end

  def all_permit_params
    params.permit!.to_h.deep_symbolize_keys
  end
end
