ABC="abc"

echo "This is a test!" > $ABC.md

forked_clipboard() {
  echo "$@" | xclip -i -selection clipboard
  echo "put into clipboard"
}

output=$(cat $ABC.md)

((forked_clipboard $output & ) & )

echo "finished test. ($output)"
