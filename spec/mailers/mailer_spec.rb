require "spec_helper"

describe Mailer do
  describe "enviar" do
    let(:mail) { Mailer.enviar "email@email.com" }

    it "verificar cabecalhos" do
      mail.subject.should eq("Novo interessado - OneTarget")
      mail.to.should eq(["mrmarcondes@gmail.com", "gnumarcelo@gmail.com", "dnlfukuda@gmail.com"])
      mail.from.should eq("OneTarget contato@onetarget.com.br")
    end

    it "verificar corpo do email" do
      mail.body.encoded.should match("Novo")
      mail.body.encoded.should match("email@email.com")
    end
  end

end
