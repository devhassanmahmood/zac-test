class HomeController < ApplicationController
  def index
    shops_json_path = Rails.root.join('app', 'data', 'shops.json')
    shops_json = File.read(shops_json_path)
    @shops = JSON.parse(shops_json)
  end
end
