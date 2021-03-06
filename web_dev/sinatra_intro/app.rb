# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  name = params[:name]
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that retrieves 
# an address
get '/contact/:address' do
  address = params[:address]
  "The address you requested is #{address}."
end

# write a GET route that takes a name as a query parameter and displays a message
# that includes the name
# If the query parameter is not present, display a default message
get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{params[:name]}!"
  else
    "Great job...buddy!"
  end
end

# write a GET route that takes two numbers as route parameters,
# adds them, and responds with the result
get '/:num_1/add/:num_2' do
  "The sum of your numbers is #{params[:num_1].to_i + params[:num_2].to_i}"
end