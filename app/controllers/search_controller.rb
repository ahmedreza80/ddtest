class SearchController < ApplicationController
	def search
  if params[:q].nil?
    @chairs = []
    @benches = []
    @besidets = []
    @bookcabinets = []
    @centerts = []
    @diningbenches = []
    @diningchairs = []
    @diningts = []
    @divanbs = []
    @doublebs = []
    @dressingts = []
  else
    @chairs = Chair.search params[:q]
    @benches = Bench.search params[:q]
    @besidets = Besidet.search params[:q]
    @bookcabinets = Bookcabinet.search params[:q]
    @centerts = Centert.search params[:q]
    @diningbenches = Diningbench.search params[:q]
    @diningchairs = Diningchair.search params[:q]
    @diningts = Diningt.search params[:q]
    @divanbs = Divanb.search params[:q]
    @doublebs = Doubleb.search params[:q]
    @dressingts = Dressingt.search params[:q]
  end
end
end