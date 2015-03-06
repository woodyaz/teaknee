require 'sinatra'

helpers do
	$domains = Array.new

	def add_domain(domain)
		id = $domains.count + 1
		puts domain
		$domains << {"id" => id, "domain" => domain }
		true
	end

	def get_by_id(id)
		res = $domains.select {|domain| domain["id"] == id }
		return res["domain"].to_s
	end
end

get '/' do
	erb :index		
end

post '/add' do
	if add_domain(params[:domain])
		redirect "/"
	else
		status 500
		"Something went wrong"
	end
end	

get '/go/:id' do
	res = get_by_id(params[:id])
	puts res
end
