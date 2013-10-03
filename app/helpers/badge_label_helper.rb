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
    klass += types.map { |type| "#{what}-#{type.to_s.gsub('_','-')}" }
    content_tag :span, value, :class => klass
  end
end
