class Interessado < ActiveRecord::Base
  attr_accessible :email
  after_save :enviar_email
  validates :email, :presence => true, :uniqueness => true, :email => true
  
  def enviar_email
    Mailer.enviar(self.email).deliver
  end
end
