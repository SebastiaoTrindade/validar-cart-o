# lib/bandeira.rb
module BandeiraCartao
  def self.identificar(numero_cartao)
    numero_cartao = numero_cartao.to_s

    case numero_cartao
    when /^4\d{12}(\d{3})?$/
      "Visa"
    when /^5[1-5]\d{14}$/
      "MasterCard"
    when /^3[47]\d{13}$/
      "American Express"
    when /^6(?:011|5\d{2})\d{12}$/
      "Discover"
    when /^35\d{14}$/
      "JCB"
    else
      "Desconhecido"
    end
  end
end
