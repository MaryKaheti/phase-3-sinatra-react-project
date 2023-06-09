class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

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

  get '/sellers' do
  sellers = Seller.all
  sellers.to_json
 end

 get '/sellers/:id' do
  seller = Seller.find(params[:id])
  seller.to_json
 end

  get '/sellers/:id/properties' do
  seller = Seller.find(params[:id])
  seller.properties.to_json
  end

 post '/sellers' do
  seller = Seller.create(JSON.parse(request.body.read))
  seller.to_json
 end

  patch '/sellers/:id' do
  seller = Seller.find(params[:id])
  seller.update(
  first_name: params[:first_name],
  last_name: params[:last_name],
  age: params[:age],
  location: params[:location]
  )
  seller.to_json
 end

 delete '/sellers/:id' do
  seller = Seller.find(params[:id])
  seller.destroy
  seller.to_json
  end

end
