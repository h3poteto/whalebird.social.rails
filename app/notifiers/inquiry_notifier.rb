class InquiryNotifier
  def self.slack(id)
    inquiry = Inquiry.find(id)
    notifier = Slack::Notifier.new(ENV["SLACK_WEBHOOK_URL"])
    body = <<-EOF
----------------
お問い合わせがありました

内容：
#{inquiry.body}

連絡先：
#{inquiry.email}

----------------
    EOF
    notifier.ping(body)
  end
end
