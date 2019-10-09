#!/usr/bin/env ruby

# update_data.rb
#
# Fetches CSV data from ourairports.com, converts it to JSON, then writes that to seed_data directory.
# To complete the data update in the app, recreate the data base, e.g. `rails db:setup`
#
# Must be run from the project root because it assumes the destination is `./seed_data`.

require 'smarter_csv'
require 'stringio'
require 'yaml'


DATA_SOURCE_URLS = {
    'airports'  => 'https://ourairports.com/data/airports.csv',
    'countries' => 'https://ourairports.com/data/countries.csv',
    'regions'   => 'https://ourairports.com/data/regions.csv',
}


DATA_SOURCE_URLS.each do |filename_base, source_url|
  puts "\nDownloading #{source_url}...\n\n"
  csv_text = `curl #{source_url}`

  print "\nConverting CSV to hash..."
  hash_array = SmarterCSV.process(StringIO.new(csv_text), strings_as_keys: true)

  print "Converting hash to YAML..."
  yaml_text = hash_array.to_yaml

  print "Writing file..."
  output_filespec = File.join('seed_data', "#{filename_base}.yaml")
  File.write(output_filespec, yaml_text)
  puts "\nWrote #{hash_array.size} records to #{output_filespec}.\n\n"
end

puts "Done.\n\n"




