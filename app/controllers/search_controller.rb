class SearchController < ApplicationController
    def search
  if params[:q].nil?
    @chairs = []
    @benches = []

  else
    @chairs = Chair.search params[:q]
    @benches = Bench.search params[:q]

  end
end
end