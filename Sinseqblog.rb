require 'sinatra/base'
require 'sequel'
require 'pry'

class Sinseqblog < Sinatra::Application
    get '/' do
      sinseqs_table = DB[:sinseq]
      erb :index, :locals => {:sinseqs =>sinseqs_table.to_a}
    end

  post '/' do
    DB[:sinseq].insert(description: params[:description])
    redirect "/"
   end

end
