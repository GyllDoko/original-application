require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "welcome_mail" do
    user = User.create!(email: Faker::Internet.email, password: "passwoioj")
    let(:mail) { UserMailer.welcome_mail(user) }

    it "renders the headers" do
      expect(mail.subject).not_to eq("Welcome mail")
      expect(mail.to).not_to eq(["to@example.org"])
      expect(mail.from).to eq(["dokogyll@gmail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).not_to match("Hi")
    end
  end

end
