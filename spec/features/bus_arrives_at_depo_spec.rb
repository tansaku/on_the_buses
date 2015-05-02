require 'bus'
require 'depo'

feature 'bus arrives at depo' do 
  scenario 'at catford' do
    routemaster = Bus.new
    catford = Depo.new
    routemaster.arrive(catford)
    expect(routemaster.location()).to eq catford
  end
end
