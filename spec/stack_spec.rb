require 'spec_helper'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  describe "#push" do
    subject { stack.push 1 }
    it { expect(subject).to eq stack }
  end

  describe "#length" do
    subject { stack.length }
    context "1 を push 済みの stack" do
      before { stack.push 1 }
      it { expect(subject).to eq 1 }
    end
    context "1 と 5 を push 済みの stack" do
      before do 
        stack.push 1
        stack.push 5
      end
      it { expect(subject).to eq 2 }
    end
  end

  describe "#pop" do
    subject { stack.pop }
    context "1回push -> popし、同一の値が返却される" do
      before { stack.push 3 }
      it { expect(subject).to eq 3 }
    end

    context "3回push -> popし、最後にpushした値が返却される" do
      before do
        stack.push 5
        stack.push 1
        stack.push 8
      end
      it { expect(subject).to eq 8 }
    end
  end

  describe "#to_a" do
    subject { stack.to_a }
    context "stack の配列表現を返却する" do
      it { expect(subject).to be_an_instance_of(Array) }
    end
  end
end

