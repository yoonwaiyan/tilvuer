unless Channel.all.count > 0
  [:ruby, :rails, :javascript, :shell, :vim].each do |c|
    Channel.create(name: c)
  end
end
