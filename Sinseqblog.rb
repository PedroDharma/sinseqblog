require 'sinatra/base'

class Sinseqblog < Sinatra::Application
  get '/' do
      erb :index
    end
  post '/' do
    params[:sinseq_blog]
  end
end
