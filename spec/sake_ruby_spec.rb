# frozen_string_literal: true

RSpec.describe SakeRuby do
  describe "#all" do
    it "return all tokuteimeisho" do
      expect(described_class.all.size).to eq(8)
    end
  end

  describe "#select_random" do
    it "return one tokuteimeisho" do
      expect(described_class.select_random.size).to eq(4)
    end
  end

  describe "#find_by_tokuteimeisho" do
    context "一致する特定名称がデータ内にあるとき" do
      let(:tokuteimeisho) { "吟醸酒" }

      it "正しいデータが返ること" do
        expected_arr = [{
          roman: "ginjoshu",
          tokuteimeisho: "吟醸酒",
          raw_materials: "米、米こうじ、醸造アルコール",
          seimaibuai: "60%以下"
        }]
        expect(described_class.find_by_tokuteimeisho(tokuteimeisho)).to eq(expected_arr)
      end
    end

    context "一致する特定名称がデータ内にないとき" do
      let(:tokuteimeisho) { "小吟醸酒" }

      it "return Sake::NoTokuteimeishoError" do
        expect { described_class.find_by_tokuteimeisho(tokuteimeisho) }.to raise_error(SakeRuby::NoTokuteimeishoError)
      end
    end
  end
end
