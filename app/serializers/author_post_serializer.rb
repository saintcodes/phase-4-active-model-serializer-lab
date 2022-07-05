class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :tags, :short_content

  def short_content
    "#{self.object.content.first(40)...}"
  end

end
