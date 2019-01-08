require './lib/shifts'
require './lib/characters'
require './lib/cipher'
require './lib/decipher'
require './lib/interface'
require './lib/enigma'
require 'date'

enigma = Enigma.new
source = enigma.read_file.downcase

if !!(ARGV[2] =~ /\d{5}/) && !!(ARGV[3] =~ /\d{6}/)
  alteration = enigma.decrypt(source, ARGV[2].to_s, ARGV[3].to_s)
elsif !!(ARGV[2] =~ /\d{5}/)
  alteration = enigma.decrypt(source, ARGV[2].to_s)
end

enigma.write_file(alteration[:decryption])
puts "Created '#{ARGV[1]}' with the key #{alteration[:key]} and date #{alteration[:date]}"
