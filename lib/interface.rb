module Interface

  def read_file
    file = File.open(ARGV[0], 'r')
    file.read
  end

  def new_file
    File.open(ARGV[1], 'w')
  end

end
