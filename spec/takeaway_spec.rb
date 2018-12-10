require_relative '../lib/takeaway'

describe Takeaway do
let(:menu) {double :menu}
let(:all) {double :all}
let(:total) {double :total}

  describe '#menu' do
    it "shows menu not empty" do
      expect(subject.menu.all).not_to be_empty
    end
    it {(is_expected).to(respond_to(:take_food).with(1).argument)}
  end
end
