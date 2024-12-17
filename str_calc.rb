class StringCalculator

  def add(string)
    delimiter, string = extract_delimiter(string)
    string.split(delimiter).inject(0) { |sum, x| sum + x.to_i }
  end

  def extract_delimiter(string)
    delimiter = /[,\n]/
    if string =~ /^\/\//
      delimiter = string[2]
      string = string[4..-1]
    end
    [ delimiter, string ]
  end
end

s = StringCalculator.new
p s.add("1,3")




