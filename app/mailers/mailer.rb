class Mailer < ActionMailer::Base
  default from: "OneTarget contato@onetarget.com.br"
  default subject: "Novo interessado - OneTarget"

  def enviar email
    @email = email
    mail to: ["mrmarcondes@gmail.com", "gnumarcelo@gmail.com", "dnlfukuda@gmail.com"]
  end
end
