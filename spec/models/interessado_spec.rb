require 'spec_helper'

describe Interessado do
  describe "ao se cadastrar" do
    before { ActionMailer::Base.deliveries = [] }
    
    it "deve enviar email para responsaveis pelo OneTarget" do
      @interessado = Interessado.create(email: "email@email.com")
      ActionMailer::Base.deliveries.should_not be_empty
    end

  end
end
