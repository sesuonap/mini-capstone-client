class Client::CartedProductsController < ApplicationController
  
  def new 
    render 'new.html.erb'
  end 

  def create 
    client_params = {
                      product_id: params[:product_id],
                      quantity: params[:quantity]
                    }
    response = Unirest.post(
                            "http://localhost:3000/api/carted_products",
                            parameters: client_params
                            )
    @carted_product = response.body 
    render 'show.html.erb'
  end 
end
