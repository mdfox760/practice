  # For seeding a db in Rails with Users

  # Let’s open the db/seeds.rb file and use the read line
  # by line foreach method to accomplish our seeding task.

  # seeds.rb
  require 'csv'

  CSV.foreach("db/csv/csv_data.csv", 
  { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do | row|
  User.create(row.to_hash)
  end

  # Let’s run the seeding:

  # $ bin/rake db:seed
  # And if there are no errors we can go and check in the 
  # Rails console to check if all the users in the
  # CSV file where inserted correctly:

  # $ bin/rails c
  # Loading development environment (Rails 4.1.5)
  # irb(main):001:0> users = User.all
  # User Load (1.4ms)  SELECT "users".* FROM "users"
  # Yes. It worked.

