module Interface

  def read_file
    file = File.open(ARGV[0], 'r')
    file.read
  end

end
