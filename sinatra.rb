require 'sinatra'
require 'sinatra/cookies'

enable :sessions
set :session_secret, 'sadsak45481sadsd48485sads548'
# Default file paths
# set :root, File.dirname(__FILE__)
# set :public_folder, settings.root + "public"
# set :views, settings.root + "views"
require_relative('helpers.rb')

get '/' do
  @page_title = "Welcome to Explore California!"
  @body_id = 'home'
  render_view :index
end

get '/contact' do
  @page_title = "Explore California: Contact Us"
  render_view :contact
end

get '/explorers' do
  @page_title = "Explore California: Explorers"
  render_view :explorers
end

get '/mission' do
  @page_title = "Explore California: Mission"
  render_view :mission
end

get '/resources' do
  @page_title = "Explore California: Resources"
  render_view :resources
end

get '/resources/faq' do
  @page_title = "Explore California: FAQ"
  render_view 'resources/faq'
end

get '/support' do
  @page_title = "Explore California: Support"
  render_view :support
end

get '/tours' do
  @page_title = "Explore California: Tours"
  render_view :tours
end

get '/tours/tour_detail_backpack' do
  @page_title = "Explore California: Tours - Backpack Cal"
  render_view 'tours/tour_detail_backpack'
end

get '/tours/tour_detail_bigsur' do
  @page_title = "Explore California: Tour - Big Sur Retreat"
  render_view 'tours/tour_detail_bigsur'
end

get '/set_cookie' do
  cookies[:time] = Time.now.to_s
  "Cookie was set"
end

get '/get_cookie' do
  output = "Stored time: #{cookies[:time]}<br/>"
  output << "Current time: #{Time.now}"
  output
end


get '/set_session' do
  session[:time] = Time.now.to_s
  "Session was set"
end

get '/get_session' do
  output = "Stored time: #{session[:time]}<br/>"
  output << "Current time: #{Time.now}"
  output
end

