function validate_input() {
	if [ -z "$1" ]
	then
		echo "Add a shell environment file to the end of the command."
		echo ""
		echo "e.g.:"
		echo ""
		echo "sh ./link.sh ~/.zshrc"
		exit 1
	fi
}

validate_input $1

echo "Retrieving this repository's working directory ..."
PWD=$(pwd)
echo $PWD

echo ""

echo "Adding to $1 ..."
echo "source $PWD/ffmpeg_mov_to_mp4.sh" >> $1 

echo "Done!"
