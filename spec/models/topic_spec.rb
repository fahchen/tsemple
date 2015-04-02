require 'rails_helper'

RSpec.describe Topic, type: :model do
  describe '#markdown_body' do
    let(:user) { create :user, preferred_editor: :markdown }
    let(:topic) { create :topic, user: user, markdown_body: '#### hello', body: nil }

    it 'updats the parsed body' do
      expect(topic.body).to eq "<h4>hello</h4>\n"
    end
  end

  describe '#markdown_body' do
    let(:user) { create :user, preferred_editor: :wysiwyg }
    let(:topic) { create :topic, user: user, wysiwyg_body: "<h4>hello</h4>", body: nil }

    it 'updats the parsed body' do
      expect(topic.body).to eq "<h4>hello</h4>"
    end
  end
end
