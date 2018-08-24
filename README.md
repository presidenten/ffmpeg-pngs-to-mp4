# ffmpeg-pngs-to-mp4

Docker image that converts a collection of pngs to mp4

## Volumes:

Directory with pngs:
- /in

Output directory:
- /out

## Environment variables:

Output filename without (.mp4)
- VIDEONAME

## Example run command:

```shell
docker container run --rm -d -v $(pwd)/pngs:/in -v $(pwd)/result:/out -e VIDEONAME="pngs-as-mp4" presidenten/ffmpeg-pngs-to-mp4:1.0.0-ffmpeg4.0
```
