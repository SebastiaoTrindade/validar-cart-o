# app.rb
require_relative 'lib/validador'
require_relative 'lib/bandeira'

puts "💳 Bem-vindo ao Validador de Cartão de Crédito!"
print "Digite o número do cartão: "
numero_cartao = gets.chomp

if ValidadorCartao.luhn_valid?(numero_cartao)
  puts "✅ O cartão é válido!"
  puts "🏦 Bandeira: #{BandeiraCartao.identificar(numero_cartao)}"
else
  puts "❌ O cartão é inválido!"
end
