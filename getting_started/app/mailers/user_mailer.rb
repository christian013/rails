class UserMailer < ApplicationMailer
  default from: 'chrth679@student.liu.se'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/'
    user = User.new(name: "Christian", 
      email: "chrth679@student.liu.se", login: "chris")
    @user = user
    mail(to: user.email, subject: 'Welcome! This is my amazing Ruby on Rails blog!')
  end

  def receive(email)
    page = Page.find_by(address: email.to.first)
    page.emails.create(
      subject: email.subject,
      body: email.body
    )
    
    if email.has_attachments?
      email.attachments.each do |attachment|
        page.attachments.create({
          file: attachment,
          description: email.subject
        })
  end
end
