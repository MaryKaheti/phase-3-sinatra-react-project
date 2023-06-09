class SellerController < ApplicationController

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