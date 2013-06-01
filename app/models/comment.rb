class Comment < Struct.new(:id, :name, :text)
  def self.all
    [
      ['Josh','Yo'], ['Chris','Hey'], ['Josh','What\'s up?'], ['Chris','Not much, just hackin!']
    ].each_with_index.map do |(name,txt), i|
      Comment.new(i, name, txt)
    end
  end
end
