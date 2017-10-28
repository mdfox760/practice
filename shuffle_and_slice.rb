# Shuffles the names and assigns teams in groups of two.

people = %w(
  Anne
  Elizabeth
  Erica
  Iryna
  Johanna
  Juliane
  Katja
  Katrin
  Maria
  Renate
  Sureka
  Miriam
  Zazie
  Anja
)
people.shuffle.each_slice(2) do |pair|
  puts pair.join(', ')
end
