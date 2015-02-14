namespace :db do
  desc "Populate video model with dummy data"
  task :populate => :environment do
  require 'populator'
 
  Video.populate(50) do |video|
    video.name = Populator.words(2..3)
    video.title = Populator.words(4..8)
    video.duration = "00:13:23"
    video.embed = '<script src="//embed.flowplayer.org/5.5.2/embed.min.js"><div class="flowplayer" data-origin="https://flowplayer.org/demos/" data-analytics="UA-27182341-1" data-rtmp="rtmp://s3b78u0kbtx79q.cloudfront.net/cfx/st" style="width: 470px; height: 250px;"><video><source type="video/webm" src="http://stream.flowplayer.org/black/470x250.webm"><source type="video/mp4" src="http://stream.flowplayer.org/black/470x250.mp4"><source type="video/flash" src="mp4:black/470x250"></video></div></script>'
    video.description = Populator.paragraphs(1)
    end

  end

end
