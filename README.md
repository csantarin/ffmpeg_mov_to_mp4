# ffmpeg_mov_to_mp4

Creates a compressed copy of a large `.mov` file into `.mp4` format using [`ffmpeg`](https://ffmpeg.org).

This is a simple function. It doesn't handle errors.

## Prerequisite

You need to download and install [`ffmpeg`](https://ffmpeg.org).

## Setup

1. Follow the [Prerequisite](#prerequisite) instructions.

2. Clone this repository.
    ```sh
	git clone https://github.com/csantarin/ffmpeg_mp4_to_mov.git
    ```

3. Navigate to the repostitory folder.
	```sh
	cd <path/to/the/parent/of/your/local/copy>/ffmpeg_mov_to_mp4
	```

4. Expose the `ffmpeg_mov_to_mp4` function to command line.

	```sh
	source ./ffmpeg_mov_to_mp4.sh 
	```

5. Follow the [Linking](#linking) instructions to add this command to your command line permanently.

## Usage

Call the newly-installed `ffmpeg_mov_to_mp4` command.

```sh
# Call the function and provide an input file name
# - Exclude the trailing .mov extension as it will be used to construct the .mp4 file.
# - Include a path (relative or absolute) if necessary.
ffmpeg_mov_to_mp4 <path/to/your/file> 
```

Example:

```sh
$ ffmpeg_mov_to_mp4 ../my-project/my-project-recording

Processing ../my-project/my-project-recording.mov ...

# Some processing from the ffmpeg converter...

Done!
../my-project/my-project-recording.mp4
```

## Linking

In case you don't want to constantly `source` the same same command over and over, you can link the script.

### First step: Know your environment

You should locate where your shell environment is.

Assumptions in the subsequent parts:
- Shell environment file: `.zshrc`
- Location: user home directory (`~`. In the following, it represents the `/Users/csantarin` folder).

#### Option 1: Via utility script

There's a `link.sh` file that can do this for you.

```sh
sh ./link.sh ~/zshrc
```

Result:

```
Retrieving this repository's working directory ...
/Users/csantarin/ffmpeg_mp4_to_mov

Adding to /Users/csantarin/.zshrc ...
Done!
```

#### Option 2: By hand

Copy this to your shell environment file.

```sh
source ~/ffmpeg_mp4_to_mov/ffmpeg_mov_to_mp4.sh
```

### Final step: Apply changes

`source` the changes immediately or launch a new command line session:

```sh
source ~/.zshrc
```
