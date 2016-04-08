#...
install:
for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$f" "$HOME"/"$f"
done

hello.txt:
	echo Hello World > hello.txt

