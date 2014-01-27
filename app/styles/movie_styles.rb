module MovieStyles
  def synopsis_label_style(text)
    {
      text: text,
      text_color: UIColor.whiteColor,
      background_color: UIColor.clearColor,
      shadow_color: UIColor.blackColor,
      number_of_lines: 0,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.boldSystemFontOfSize(12.0),
      resize: [ :left, :right, :top ],
      frame: CGRectMake(10, 100, 300, 500)
    }
  end

  def movie_view_style
    {
      background_color: UIColor.grayColor
    }
  end
end
