#convert an oracle ddl to postgresql, and write out the converted file
#usage: ruby convert.rb PPDM39_XX.SQL


lines = []

def parse_comment(line)
  "\\qecho '#{line.split(" ").drop(1).join(" ")}'"
end

def parse_date(line)
  line.split(" ").first+" TIMESTAMP(0),"
end

def parse_number(line)

  #fix for Oracle's naked NUMBER type...
  if line.match /_OBS_NO/
    line = line.gsub("NUMBER", "NUMBER(8,0)")
  end

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

  # GUID uses MODIFY, which PostgreSQL does not have
  if File.basename(ARGV[0]).upcase == "PPDM39_GUID.SQL"
    if line.match /\sMODIFY/
      line = "ALTER TABLE #{line.split(" ")[2]} ALTER PPDM_GUID SET NOT NULL;"
    end
  end

  # only TAB gets the full conversion
  if File.basename(ARGV[0]).upcase == "PPDM39_TAB.SQL"
    line = parse_number(line) if line.match /\sNUMBER/
    line = parse_date(line) if line.match /\sDATE/
    line = line.gsub("VARCHAR2", "VARCHAR") if line.match /\sVARCHAR/
    line = line.gsub("BLOB", "BYTEA") if line.match /\sBLOB/
  end

  lines << line.strip
end

path = "c:/dev/pg_ppdm39/postgres/#{File.basename(ARGV[0])}"
open(path, "w"){|f| f.puts lines.join("\n") }
