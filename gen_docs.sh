echo "Starting..."
git clone https://github.com/pygame-community/pygame-ce
py -m venv venv
source venv/bin/activate
py -m dev.py docs
mkdir -p dist
rm -rf dist/docs
mv docs/generated dist/docs
echo "Moved generated documentation files over to dist/docs"
echo "Done."
