class SearchController < ApplicationController
def search
  if params[:q].nil?
    @chairs = []
  else
    @chairs = Chair.search params[:q]
  end
end
end