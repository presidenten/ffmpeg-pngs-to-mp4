FROM jrottenberg/ffmpeg:4.0-alpine

ENV VIDEONAME testcase
VOLUME [ "/in", "/out" ]

WORKDIR /in

ENTRYPOINT []
CMD ffmpeg -y -r 10 -i /in/%04d.png -vcodec libx264 -crf 32 -vf fps=10 -pix_fmt yuv420p -vf scale="1200:trunc(ow/a/2)*2" /out/$VIDEONAME.mp4