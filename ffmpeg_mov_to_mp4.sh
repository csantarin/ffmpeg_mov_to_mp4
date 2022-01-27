#!/usr/bin/env bash

function ffmpeg_mov_to_mp4() {
	echo "Processing $1.mov ..."

	ffmpeg -i "$1.mov" -vcodec h264 -acodec mp2 "$1.mp4"

	echo ""
	echo "Done!"
	echo "$1.mp4"
}
