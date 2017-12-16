unless Channel.all.count > 0
  [:ruby, :rails, :javascript, :shell, :vim].each do |c|
    Channel.create(name: c)
  end
end

unless Post.all.count > 0
  Post.create!(title: "Use Vim for crontab edit", body: "By default `crontab -e` fires nano to edit the cronjobs, but I prefer to use vim shortcuts to copy and paste the commands. The way to do it is to use an environment variable `VISUAL` to define your preferred editor:

              ```shbash
              VISUAL=vim crontab -e
              ```", channel: Channel.first, likes: 1)
end
