puts 'Gerando sports...'

5.times do |i|
  Sport.create(
    name: ["futbol", "basket", "voley", "basebol", "tenis"].sample ,
    description: "sport famoso"
    )
end

puts 'sports gerados com sucesso!'