require 'bundler'
Bundler.require

# require 'lib/app/scrapper.rb' quand on a besoin de mettre le path exact
$:.unshift File.expand_path("./../lib/app", __FILE__)
