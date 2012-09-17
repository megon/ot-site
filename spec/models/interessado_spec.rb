require 'spec_helper'

describe Interessado do
  describe "novo" do
    it "deve enviar email" do
      interessado = Interessado.create(email: "email@email.com")
    end

  end
end
