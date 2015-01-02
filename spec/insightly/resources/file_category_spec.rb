require 'spec_helper'

describe Insightly2::Resources::FileCategory do
  subject(:file_category) do
    VCR.use_cassette('get_file_category') do
      Insightly2.client.get_file_category(id: 1947439)
    end
  end

  describe 'instance' do
    it 'is decorated with FileCategory object' do
      expect(subject).to be_a(described_class)
    end

    %w(category_id category_name active background_color).each do |method|
      it "responds to #{method}" do
        expect(subject).to respond_to(method)
      end
    end
  end
end