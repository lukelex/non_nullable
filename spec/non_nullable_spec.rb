require "non_nullable"

describe NonNullable do
  context "with a nil value" do
    let(:klass) do
      Class.new do
        extend NonNullable
        def nil_value ; end
        avoid_nil_on :nil_value
      end
    end

    it { expect(klass.new.nil_value).to eq "" }
  end

  context "with a not nil value" do
    let(:klass) do
      Class.new do
        extend NonNullable
        def not_nil_value
          "not nil"
        end
        avoid_nil_on :not_nil_value
      end
    end

    it { expect(klass.new.not_nil_value).to eq "not nil" }
  end
end
