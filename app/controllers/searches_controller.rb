class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'XJWRXSOCKIW50Z2Y5HAFXZM2FPNDLEVLPI2D3URPT0TUQRKT'
      req.params['client_secret'] = 'CHVKYYPHTVNIUN24IQKQ3WSPQ0QLXAB4ZNETEKBVF5SBZS01'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
  end
#  render 'search'
end
end
