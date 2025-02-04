# lib/validador.rb
module ValidadorCartao
  def self.luhn_valid?(numero_cartao)
    numeros = numero_cartao.to_s.chars.map(&:to_i).reverse
    soma = numeros.map.with_index do |num, index|
      if index.odd?
        num *= 2
        num > 9 ? num - 9 : num
      else
        num
      end
    end.sum

    soma % 10 == 0
  end
end
