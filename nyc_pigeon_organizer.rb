def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, index), results|
    index.each do |value, names|
      names.each do |name|
        results[name] ||= {}
        results[name][value] ||= []
        results[name][value] << value.to_s
      end
    end
  end
end
