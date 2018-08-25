# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def yaml_filespec(basename)
  File.expand_path(File.join(File.dirname(__FILE__), '..', 'seed_data', "#{basename}.yaml"))
end


hashes = YAML.load_file(yaml_filespec('countries'))
hashes.each do |h|
  Country.from_source_hash(h).save
end


hashes = YAML.load_file(yaml_filespec('regions'))
hashes.each do |h|
  Region.from_source_hash(h).save
end


hashes = YAML.load_file(yaml_filespec('airports'))
hashes.each do |h|
  Airport.from_source_hash(h).save
end
