require 'spec_helper'
require_relative '../../../../lib/howitzer/settings'

describe "Settings" do
  context "#settings" do
    subject { settings }
    context "when method called two times" do
      let(:other_settings) { settings }
      it { expect(subject).to equal(other_settings) }
      it { expect(other_settings).to be_a_kind_of(SexySettings::Base) }
    end
  end
  context "SexySettings configuration" do
    subject { SexySettings.configuration }
    it do
      expect(subject.path_to_custom_settings).to include('config/custom.yml')
      expect(subject.path_to_default_settings).to include('config/default.yml')
      subject
    end
  end
end
