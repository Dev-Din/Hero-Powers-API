# app/controllers/hero_powers_controller.rb
class HeroPowersController < ApplicationController
 def create
   hero = Hero.find_by(id: params[:hero_id])
   power = Power.find_by(id: params[:power_id])

   if hero && power
     hero_power = HeroPower.new(strength: params[:strength], hero: hero, power: power)

     if hero_power.save
       render json: hero, serializer: HeroSerializer
     else
       render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
     end
   else
     render json: { error: 'Hero or Power not found' }, status: :not_found
   end
 end
end
