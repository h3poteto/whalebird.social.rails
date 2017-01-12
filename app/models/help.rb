class Help < ActiveRecord::Base
  def title
    self.send("title_#{I18n.locale}")
  end
  def body
    self.send("body_#{I18n.locale}")
  end
end
