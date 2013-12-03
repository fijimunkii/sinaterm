require 'sinatra'
require 'sinatra/reloader' if development?

previous_lines = ''

get '/' do
	previous_lines += "<br />#{params[:terminal_input]}" if params[:terminal_input]
	previous_lines += '<br />' + `#{params[:terminal_input]}` if params[:terminal_input]
	@previous_lines = previous_lines
	erb :terminal
end

post '/' do
	previous_lines += "<br />#{params[:terminal_input]}" if params[:terminal_input]
	previous_lines += '<br />' + `#{params[:terminal_input]}` if params[:terminal_input]
	@previous_lines = previous_lines
	erb :terminal
end