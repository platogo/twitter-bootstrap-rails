module BadgeLabelHelper
  def badge(*args)
    badge_label(:badge, *args)
  end

  def tag_label(*args)
    badge_label(:label, *args)
  end

  private
  def badge_label(what, value, *types)
    klass = [what]
    klass += types.map! do |type|
      type =~ /arrowed_*/ ? type.to_s.gsub('_','-') : "#{what}-#{type.to_s.gsub('_','-')}"
    end
    content_tag :span, value, :class => klass
  end
end
