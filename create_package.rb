require "erb"
require "fileutils"

puts 'What is the chocolatey name of the package (lower case letter "-" and ".")'
package_name = gets.chomp

puts "What is the real name of the package (no limit)"
title = gets.chomp

Dir.mkdir(package_name)
Dir.mkdir("#{package_name}/tools")
Dir.mkdir("#{package_name}/icon")

nuspec_xml = File.read("./template/template.nuspec")
nuspec = ERB.new(nuspec_xml)
File.open("#{package_name}/#{package_name}.nuspec", "w") do |f|
  f.write nuspec.result(binding)
end

FileUtils.cp "./template/template.ps1", "#{package_name}/update.ps1"

install = File.read("./template/templateInstall.ps1")
chocoinstall = ERB.new(install)
File.open("#{package_name}/tools/chocolateyInstall.ps1", "w") do |f|
  f.write chocoinstall.result(binding)
end

File.new("#{package_name}/icon/#{package_name}-icon.png", "w")

# nuspec.gsub(/\#\{(.*?)\}/) { |match| eval($1) }
# p string.tr("#", "#")
# p eval(string)
# puts "What is the main website of the package"
# temp = gets
# nuspec[:metadata][:projectUrl] = temp.chomp if temp != "\n"
