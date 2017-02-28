# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def welcome_email_preview
    user = User.new(name: "Christian", 
      email: "chrth679@student.liu.se", login: "chris")
    UserMailer.welcome_email(@user)
  end
end
