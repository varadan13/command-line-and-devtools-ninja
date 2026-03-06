yt-dlp -x --audio-format mp3 --embed-metadata https://www.youtube.com/watch\?v\=HHmrJv4e6pE\&list\=PLKIqJ44QpT4wBHJMwIOTONoU2ZXJIQcOJ\&index\=2 

config file in 

nvim ~/.config/yt-dlp/config                                              


yt-dlp \
--extractor-args "youtube:player_client=android" \
-N 8 \
-f "bv*+ba/b" \
https://youtu.be/DfK0b66vq8E


ffmpeg -i input.mp4 -vn -f segment -segment_time 3600 -acodec libmp3lame -q:a 2 odyssey_%02d.mp3

