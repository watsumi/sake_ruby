File.foreach("#{__dir__}/original_list.txt") do |line|
  if line.match(/:roman:.*/)
    @target = line.gsub(/:roman: /,'')
    file = File.new("#{Dir.getwd}/lib/sake_ruby/tokuteimeisho/#{@target}.yml","a")
    file.puts "---"
    file.puts line
    file.close
  elsif line.match(/:tokuteimeisho:.*/) || line.match(/:raw_materials:.*/) || line.match(/:seimaibuai:.*/)
    file = File.open("#{Dir.getwd}/lib/sake_ruby/tokuteimeisho/#{@target}.yml","a+")
    file.puts line
    file.close
  end
end
