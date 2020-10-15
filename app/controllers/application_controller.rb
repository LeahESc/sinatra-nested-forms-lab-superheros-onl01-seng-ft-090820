require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
        erb :super_hero 
    end 
    
    post '/teams' do 
        @params = params
        @team = params[:team][:name]
        @motto = params[:team][:motto]
        # @hero_name = []
        # @hero_power = []
        # @hero_bio = []
        # params[:team][:members][].each do |member|
        #     @hero_name << member.name
        #     @hero_power << member.power
        #     @hero_bio <<  member.bio 
        # end -- then iterate through the arrays for each member in the views file. 
        @hero1_name = params[:team][:members][0][:name]
        @hero1_power = params[:team][:members][0][:power]
        @hero1_bio = params[:team][:members][0][:bio]
        @hero2_name = params[:team][:members][0][:name2]
        @hero2_power = params[:team][:members][0][:power2]
        @hero2_bio = params[:team][:members][0][:bio2]
        @hero3_name = params[:team][:members][0][:name3]
        @hero3_power = params[:team][:members][0][:power3]
        @hero3_bio = params[:team][:members][0][:bio3]

        erb :team 
    end 

end
