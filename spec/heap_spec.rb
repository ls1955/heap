# frozen_string_literal: true

require_relative "../lib/heap"

using Heap

describe Heap do
  describe "#heap_push" do
    specify "initial empty" do
      expect([].heap_push(1)).to eq [1]
    end

    specify "maintain heap property" do
      expect([1, 2, 3].heap_push(4)).to eq [1, 2, 3, 4]
    end

    specify "violate heap property once" do
      expect([1, 3, 4].heap_push(2)).to eq [1, 2, 4, 3]
    end

    specify "violate heap property twice" do
      expect([10, 20 ,30].heap_push(0)).to eq [0, 10, 30 ,20]
    end
  end
end
