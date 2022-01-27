# ffmpeg_mov_to_mp4

Creates a compressed copy of a large `.mov` file into `.mp4` format.

This is a simple function. It doesn't handle errors.

## Usage

```sh
# Expose the ffmpeg_mov_to_mp4 function to command line.
source ./ffmpeg_mov_to_mp4.sh 

# Call the function and provide an input file name
# - Exclude the trailing .mov extension as it will be used to construct the .mp4 file.
# - Include a path (relative or absolute) if necessary.
ffmpeg_mov_to_mp4 <path/to/your/file> 
```

Example:

```sh
$ source ./ffmpeg_mov_to_mp4.sh
$ ffmpeg_mov_to_mp4 ../my-project/my-project-recording

Processing ../my-project/my-project-recording.mov ...

# Some processing from the ffmpeg converter...

Done!
../my-project/my-project-recording.mp4
```
