require "spec_helper"

describe Node do
  let (:node_a) { Node.new "A" }
  subject { node_a }

  it { should respond_to :<< }
  it { should respond_to :children }

  describe "#children" do
    subject { node_a.children }

    context "with no child nodes" do
      it { should eql [] }
    end

    context "with child nodes" do
      let (:node_b) { Node.new "B" }
      let (:node_c) { Node.new "C" }

      before :each do
        node_a << node_b
        node_a << node_c
      end

      it { should eql [node_b, node_c] }

      it "can't change child nodes" do
        expect { subject.children = [] }.to raise_exception(NoMethodError)
      end
    end
  end

  describe "#name" do
    subject { node_a.name }

    it { should eql "A" }
  end
end


describe Tree do
  let (:root) { Node.new "R" }
  let (:tree) { Tree.new root }

  subject { tree }

  it { should respond_to :root }

  context "#root" do
    subject { tree.root }

    it { should eql root }
  end
end
