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
end
