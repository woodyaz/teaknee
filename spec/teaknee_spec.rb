require 'spec_helper'

describe 'TeaKnee, the best damn url shortener, ever!' do
  it 'Greets a homie' do
    get '/'
    expect(last_response.body).to include('Sup homies')
    expect(last_response).to be_ok
  end

  it 'adds a new url' do
    post '/add', 'domain' => 'www.doctorwho.tv'
    expect(last_response).to be_redirect
  end

  it 'redirects based on id' do
    get '/go/1'
    expect(last_response).to be_redirect
  end
end
