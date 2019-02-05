FROM jrottenberg/ffmpeg:4.0-alpine

ENV VIDEONAME testcase
ENV SLOWDOWN 10
VOLUME [ "/in", "/out" ]

WORKDIR /in

ENTRYPOINT []
CMD ffmpeg -y -r 10 -i /in/%04d.png -vcodec libx264 -crf 32 -pix_fmt yuv420p -vf "scale=1200:trunc(ow/a/2)*2","setpts=$SLOWDOWN.0*PTS" /out/$VIDEONAME.mp4