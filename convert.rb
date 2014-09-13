#convert an oracle ddl to postgres...mostly

lines = []

def parse_comment(line)
  "\\echo '#{line.split(" ").drop(1).join(" ")}'"
end

def parse_date(line)
  line.split(" ").first+" TIMESTAMP(0),"
end

def parse_number(line)
  nums = line.match /\((\d*),(\d*)\)/
  return line.gsub("NUMBER", "DOUBLE PRECISION") if nums.nil?

  if nums[2].to_i == 0
    case nums[1].to_i
    when 1..4
      line = line.split(" ").first+" SMALLINT,"
    when 5..8
      line = line.split(" ").first+" INT,"
    when 9..18
      line = line.split(" ").first+" BIGINT,"
    when 19..38
      line = line.split(" ").first+" DECIMAL(#{nums[1]}),"
    end

  else
    line = line.split(" ").first+" DECIMAL(#{nums[1]},#{nums[2]}),"
  end
  line
end


File.open(ARGV[0]).each_line do |line|

  line = parse_comment(line) if line.match /^PROMPT/
  line = parse_number(line) if line.match /\sNUMBER/
  line = parse_date(line) if line.match /\sDATE/
  line = line.gsub("VARCHAR2", "VARCHAR") if line.match /\sVARCHAR/
  lines << line.strip

end

path = "c:/dev/pg_ppdm39/PPDM39_TAB.SQL"
open(path, "w"){|f| f.puts lines.join("\n") }

#puts lines.join()
