module Interface

  def read_file
    file = File.open(ARGV[0], 'r')
    file.read
  end

  def new_file
    File.open(ARGV[1], 'w')
  end

  def write_file(alteration)
    new_file.write(alteration)
    new_file.close
  end

end
