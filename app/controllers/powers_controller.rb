# app/controllers/powers_controller.rb
class PowersController < ApplicationController
 def index
  powers = Power.all
  render json: powers
end
 def update
   power = Power.find_by(id: params[:id])
   if power
     if power.update(description: params[:description])
       render json: power
     else
       render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
     end
   else
     render json: { error: 'Power not found' }, status: :not_found
   end
 end
 def show
  power = Power.find_by(id: params[:id])

  if power
    render json: power
  else
    render json: { error: 'Power not found' }, status: :not_found
  end
end
end
