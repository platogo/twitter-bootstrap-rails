module GlyphHelper
  # ==== Examples
  # glyph(:share_alt)
  # # => <i class="icon-share-alt"></i>
  # glyph(:lock, :white)
  # # => <i class="icon-lock icon-white"></i>
  # glyph(:thumbs_up, :pull_left)
  # # => <i class="icon-thumbs-up pull-left"></i>

  def glyph(name, *clazzes)
    klass = [ "icon-#{name.to_s.gsub('_','-')}" ]
    clazzes.map! { |name| name.to_s.gsub('_','-') }
    klass += clazzes
    content_tag :i, nil, :class => klass
  end
end
