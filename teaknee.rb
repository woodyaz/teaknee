require 'sinatra'

helpers do
	$domains = Array.new

	def add_domain(domain)
		id = $domains.count + 1
		puts domain
		$domains << {"id" => id.to_s, "domain" => domain }
		true
	end

	def get_by_id(id)
    puts "Id: #{id}"
    $domains.find {|d| d["id"] == id.to_s }
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
  result = get_by_id(params[:id])
  if result 
    redirect "http://#{result["domain"]}"
  else
    puts "Domain not found."
  end
end
