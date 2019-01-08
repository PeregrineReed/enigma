require './lib/shifts'
require './lib/characters'
require './lib/cipher'
require './lib/decipher'
require './lib/interface'
require './lib/enigma'
require 'date'
require 'pry'

enigma = Enigma.new
source = enigma.read_file.downcase
alteration = enigma.encrypt(source)

enigma.write_file(alteration[:encryption])
puts "Created '#{ARGV[1]}' with the key #{alteration[:key]} and date #{alteration[:date]}"
