class PropertyController < ApplicationController
    get '/property' do
        properties = Property.all
        properties.to_json
    end

    get '/property/:id' do
        property = Property.find(params[:id])
        property.to_json
    end

    post '/property' do
        body = JSON.parse(request.body.read)
        Property.create(
           title: body["title"],
           location: body["location"],
           description: body["description"],
           price: body["price"],
           image_url: body["image_url"],
           estate_id: Estate.find_or_create_by(name: body["exhibit"]).id,
           seller_id: Seller.find_or_create_by(first_name: body["first_name"], last_name: body["last_name"]).id
        ).to_json
    end

    patch '/property/:id' do
        property = Property.find(params[:id])
        property.update(
           title: params[:title],
           location: params[:location],
           description: params[:description],
           price: params[:price],
           image_url: params[:image_url],
           estate_id: params[:estate_id],
           seller_id: params[:seller_id]
        )
        property.to_json
    end
  
    delete '/property/:id' do
        property = Property.find(params[:id])
        property.destroy
        property.to_json
    end

end