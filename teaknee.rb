require 'sinatra'

domains = []
before do
  @domains = domains
end

helpers do
  def add_domain(domain)
    id = @domains.count + 1
    @domains << { 'id' => id.to_s, 'domain' => domain }
    true
  end

  def get_by_id(id)
    @domains.find { |d| d['id'] == id.to_s }
  end
end

get '/' do
  erb :index
end

post '/add' do
  if add_domain(params[:domain])
    redirect '/'
  else
    status 500
    'Something went wrong'
  end
end

get '/go/:id' do
  result = get_by_id(params[:id])
  redirect "http://#{result['domain']}" if result
end
