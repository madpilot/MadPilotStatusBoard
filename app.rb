require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

enable  :sessions, :clean_trace
disable :logging, :dump_errors
set :haml => { :attr_wrapper => '"' }

get '/' do
  haml :index
end


get '/stylesheets/:stylesheet.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass params[:stylesheet].to_sym
end
