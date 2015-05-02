require 'bus'

describe Bus do

  let(:depo){ double(:depo) }

  before do
    allow(depo).to receive(:request_petrol).and_return(true)
  end

  it 'arrives at catford' do
    allow(depo).to receive(:request_clean).and_return(true)
    subject.arrive(depo) 
    expect(subject.location).to eq depo
  end

  it 'asks for clean when arriving' do
    expect(depo).to receive(:request_clean).and_return(true)
    subject.arrive(depo) 
  end
  
end
