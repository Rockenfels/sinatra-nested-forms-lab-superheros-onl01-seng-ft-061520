require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      members = []
      params[:team][:members].each do |member|
        hero = Hero.new(member)
        members << hero
      end
      team = params[:team]
      team["members"] = members
      @team = Team.new(team)

      erb :team
    end

end
