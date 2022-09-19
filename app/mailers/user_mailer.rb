class UserMailer < ApplicationMailer
  # default from: 'poojadadori1100@gmail.com'

  def welcome_email(user)
    @user = user
    attachments['img1.jpg'] = File.read('app/assets/images/img1.jpg')

    mail(to: user.email, subject: 'this is Welcome email')
  end
end