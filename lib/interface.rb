class Interface

  attr_reader :subject,
              :commands

  def initialize(subject)
    @subject = subject
    @commands = ARGV
  end

end
