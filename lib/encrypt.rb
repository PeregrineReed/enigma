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
