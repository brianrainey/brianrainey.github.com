#!/usr/bin/env ruby

if not Dir.exists?("_posts")
    puts "Can't find a '_posts' directory."
    puts "Make sure working dir is a Jekyll project."
    exit
end

if ARGV.length == 0
    puts "Supply a post title as ARGV[0]."
    exit
end

file_name = Time.now().strftime("%Y-%m-%d") + "-" + ARGV.join("-") + ".md"

File.open("_posts/" + file_name, "w") do |f|
  f.puts "---"
  f.puts "layout: post"
  f.puts "title: " + ARGV.join(" ")
  f.puts "---"
end
