module PostsHelper
  def join_tags(post)
    post.tags.map {|t| t.name }.join(', ')
  end

  def getTagnames(post, opt = { :max => 3})
    tagnames = []
    post.tags.each{|t|
      tagnames.push(t.name)
    }       
    tagnames = tagnames[0 .. (opt[:max] - 1)].push("...") if opt and opt[:max] and tagnames.size > opt[:max]
    tagnames
  end
end
