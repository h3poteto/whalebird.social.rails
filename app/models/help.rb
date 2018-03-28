class Help < ActiveRecord::Base
  def title
    send("title_#{I18n.locale}")
  end

  def body
    send("body_#{I18n.locale}")
  end
end
