require 'spec_helper'

include PacketFu

describe Utils do
  context "when using ifconfig" do
    it "should prevent non-interface values" do
      expect {
        PacketFu::Utils.ifconfig("not_an_interface")
      }.to raise_error(ArgumentError, /interface does not exist$/)
    end
  end
end