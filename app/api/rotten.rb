class Rotten
  API_KEY = "jvve8ube7a8bdh9kshbjxc2m"
  BOX_OFFICE_URL = "http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json?apikey=jvve8ube7a8bdh9kshbjxc2m"

  def box_office(&callback)
    AFMotion::JSON.get(BOX_OFFICE_URL) do |result|
      if result.success?
        callback.call result.object
      else
        callback.call nil
      end
    end
  end
end
