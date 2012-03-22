# Create a data URL from an image (works for other file types too, if you tweak the Content-Type afterwards)
dataurl() {
echo "data:image/${1##*.};base64,$(openssl base64 -in "$1")" | tr -d '\n'
}

# Gzip-enabled `curl`
function gurl() {
curl -sH "Accept-Encoding: gzip" "$@" | gunzip
}

