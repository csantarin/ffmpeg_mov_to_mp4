#!/usr/bin/env bash

function ffmpeg_mov_to_mp4() {
	echo "Processing $1 ..."

	# Replaces .mov with .mp4
	# https://stackoverflow.com/a/61294531
	MOV_FILENAME=$1
	MP4_FILENAME="${1%.*}.mp4"
	ffmpeg -i "$MOV_FILENAME" -vcodec h264 -acodec mp2 "$MP4_FILENAME"

	echo ""
	echo "Done!"
	echo "$MP4_FILENAME"
}
