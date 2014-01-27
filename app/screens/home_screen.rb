class HomeScreen < PM::TableScreen
  title "MotionTomatoes"
  searchable placeholder: "Filter Results"
  refreshable

  def table_data
    [{
      cells: Array(@titles)
    }]
  end

  def on_load
    on_refresh
  end

  def on_refresh
    Rotten.new.box_office do |response|
      @titles = response["movies"].map do |m|
        {
          title: m["title"],
          arguments: {title: m["title"], synopsis: m["synopsis"]},
          action: :tap_title
        }
      end
      update_table_data
    end
  end

  def tap_title(args={})
    open MovieScreen.new(title: args[:title], synopsis: args[:synopsis])
  end
end
