class Interface

  attr_reader :commands

  def initialize
    @commands = ARGV
  end

end
