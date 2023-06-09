class EstateController < ApplicationController

    get '/estates' do
        estates = Estate.all
        estates.to_json
    end
  
    get '/estates/:id' do
        estate = Estate.find(params[:id])
        estate.to_json
    end
  
    get '/estates/:id/properties' do
        estate = Estate.find(params[:id])
        properties = estate.properties
        properties.to_json
    end
  
    post '/estates' do
        estate = Estate.create(
        name: params[:name],
        location: params[:location]
        )
        estate.to_json
    end
  
    patch '/estates/:id' do
        estate = Estate.find(params[:id])
        estate.update(
           name: params[:name],
           location: params[:location]
        )
        estate.to_json
    end
  
    delete '/estates/:id' do
        estate = Estate.find(params[:id])
        estate.destroy
        estate.to_json
    end
  
    # delete '/estates/:id' do
    #     Estate.delete_first_estate.to_json
    # end

end