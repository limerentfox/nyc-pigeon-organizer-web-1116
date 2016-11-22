def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, info|
    info.each do |attributes, names|
      names.each do |pigeon|
        if pigeon_list[pigeon].nil?
          pigeon_list[pigeon] = {}
        end
        if pigeon_list[pigeon][category].nil?
          pigeon_list[pigeon][category] = []
        end
        pigeon_list[pigeon][category] << attributes.to_s
      end
    end
  end
  pigeon_list
end
