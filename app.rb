require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
require('pry')
require('pg')
also_reload('lib/**/*.rb')
also_reload('app.rb')

DB = PG.connect({:dbname => "volunteer_tracker"})

get '/' do
  "This is connected to the database #{DB.db}."
end
