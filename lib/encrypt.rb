require './lib/enigma'

enigma = Enigma.new
source = enigma.read_file.downcase

if !!(ARGV[2] =~ /\d{5}/) && !!(ARGV[3] =~ /\d{6}/)
  alteration = enigma.encrypt(source, ARGV[2].to_s, ARGV[3].to_s)
elsif !!(ARGV[2] =~ /\d{5}/)
  alteration = enigma.encrypt(source, ARGV[2].to_s)
else
  alteration = enigma.encrypt(source)
end

enigma.write_file(alteration[:encryption])
puts "Created '#{ARGV[1]}' with the key #{alteration[:key]} and date #{alteration[:date]}"
