require_relative 'Sinseqblog'
DB = Sequel.connect('postgres://pedrodharma:Miag1980@localhost/sinseqblog_test')
run Sinseqblog
