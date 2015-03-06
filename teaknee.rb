require 'sinatra'
require 'haml'

helpers do
	$domains = Array.new

	def add_domain(domain)
		id = $domains.count + 1
		puts domain
		$domains << {"id" => id, "domain" => domain }
		true
	end

	def get_by_id(id)
		$domains.select {|domain| domain["id"] == id }
	end
end

get '/' do
	erb :index		
end

post '/add' do
	if add_domain(params[:domain])
		status 201
	else
		status 500
		"Something went wrong"
	end
end	

get '/go/:id' do 
	domain = get_by_id(params[:id])
	if domain 
		redirect "http://#{domain}"
	else
		status 404
		"No domain found for that id"
	end
end
