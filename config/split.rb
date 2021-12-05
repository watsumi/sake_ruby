# frozen_string_literal: true

File.foreach("#{__dir__}/original_list.txt") do |line|
  case line
  when /:roman:.*/
    @target = line.gsub(/:roman: /, "")
    file = File.new("#{Dir.getwd}/lib/sake_ruby/tokuteimeisho/#{@target}.yml", "a")
    file.puts "---"
    file.puts line
    file.close
  when /:tokuteimeisho:.*/, /:raw_materials:.*/, /:seimaibuai:.*/
    file = File.open("#{Dir.getwd}/lib/sake_ruby/tokuteimeisho/#{@target}.yml", "a+")
    file.puts line
    file.close
  end
end
