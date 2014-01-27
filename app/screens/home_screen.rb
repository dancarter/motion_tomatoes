class HomeScreen < PM::TableScreen
  title "MotionTomatoes"

  def table_data
    [{
      cells: Array(@titles)
    }]
  end

  def on_load
    Rotten.new.box_office do |response|
      @titles = response["movies"].map do |m|
        {
          title: m["title"],
          synopsis: m["synopsis"],
          action: :tap_title
        }
      end
      update_table_data
    end
  end

  def tap_title(args={})
  end
end
