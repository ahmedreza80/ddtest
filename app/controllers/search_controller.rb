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
    @fabricsofasets = []
    @hydraulicstoragebs = []
    @kidsbs = []
    @kidstudyts = []
    @kidswardrobs = []
    @kingsizebs = []
    @kitchencabinets = []
    @lshapedcornersofas = []
    @oneseatersofas = []

    @queensizebs = []
 
    @sidets = []
    @singlebs = []
    @sofas = []
    @sofacumbs = []
    @spotts = []
    @threeseatersofas = []
    @tvcabinets = []
    @twoseatersofas = []
    @upholsteredbs = []

    @wardrobes = []
    @woodensofasets = []
    @writingts = []


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
    @fabricsofasets = Fabricsofaset.search params[:q]
    @hydraulicstoragebs = Hydraulicstorageb.search params[:q]
    @kidsbs = Kidsb.search params[:q]
    @kidstudyts = Kidstudyt.search params[:q]
    @kidswardrobs = Kidswardrob.search params[:q]
    @kingsizebs = Kingsizeb.search params[:q]
    @kitchencabinets = Kitchencabinet.search params[:q]
    @lshapedcornersofas = Lshapedcornersofa.search params[:q]
    @oneseatersofas = Oneseatersofa.search params[:q]

    @queensizebs = Queensizeb.search params[:q]

    @sidets = Sidet.search params[:q]
    @singlebs = Singleb.search params[:q]
    @sofas = Sofa.search params[:q]
    @sofacumbs = Sofacumb.search params[:q]
    @spotts = Spott.search params[:q]
    @threeseatersofas = Threeseatersofa.search params[:q]
    @tvcabinets = Tvcabinet.search params[:q]
    @twoseatersofas = Twoseatersofa.search params[:q]
    @upholsteredbs = Upholsteredb.search params[:q]

    @wardrobes = Wardrobe.search params[:q]
    @woodensofasets = Woodensofaset.search params[:q]
    @writingts = Writingt.search params[:q]

  end
end
end