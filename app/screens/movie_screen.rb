class MovieScreen < PM::Screen
  include MovieStyles

  attr_accessor :synopsis

  def on_load
    add UILabel.new, synopsis_label_style(synopsis)
  end
end
