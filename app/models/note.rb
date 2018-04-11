class Note < ApplicationRecord
  
  validates :title, presence: true

  
  def as_json
    { id: id, title: title, content: content, tags: tags }
  end
end
