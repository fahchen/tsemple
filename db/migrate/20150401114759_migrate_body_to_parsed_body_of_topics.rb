class MigrateBodyToParsedBodyOfTopicsService
  include MarkdownHelper
  include ActionView::Helpers
end

class MigrateBodyToParsedBodyOfTopics < ActiveRecord::Migration
  def up
    service = MigrateBodyToParsedBodyOfTopicsService.new
    Topic.find_each do |topic|
      topic.markdown_body = topic.body
      topic.body = service.markdown_format(topic.body.to_s)
      topic.save
    end
  end

  def down
    Topic.find_each do |topic|
      topic.body = topic.markdown_body
      topic.markdown_body = nil
      topic.save
    end
  end
end
