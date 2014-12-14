require "rails_helper"

RSpec.describe InquiryMailer, :type => :mailer do
  describe "send_admin" do
    let(:mail) { InquiryMailer.send_admin }

    it "renders the headers" do
      expect(mail.subject).to eq("Send admin")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
