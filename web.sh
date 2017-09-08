# Open Chrome from the command line. http:// will be added automatically if no protocol is specified.
# e.g. chrome jakewright.net
function chrome() {
    URL=$1
    if [[ $1 != http* ]] ; then
        URL="http://$1"
    fi
    /usr/bin/open -a '/Applications/Google Chrome.app' "$URL"
}

# Open Safari from the command line in the same way as chrome()
function safari() {
    URL=$1
    if [[ $1 != http* ]] ; then
        URL="http://$1"
    fi
    /usr/bin/open -a '/Applications/Safari.app' "$URL"
}

# Google things from the command line, e.g. google Jake Wright
function google() {
    QUERY=$( rawurlencode "$*" )
    safari "https://www.google.co.uk/search?client=safari&rls=en&q=$QUERY&ie=UTF-8&oe=UTF-8"
}

# URL encoding function taken from https://stackoverflow.com/a/10660730
function rawurlencode() {
  local string="${1}"
  local strlen=${#string}
  local encoded=""
  local pos c o

  for (( pos=0 ; pos<strlen ; pos++ )); do
     c=${string:$pos:1}
     case "$c" in
        [-_.~a-zA-Z0-9] ) o="${c}" ;;
        * )               printf -v o '%%%02x' "'$c"
     esac
     encoded+="${o}"
  done
  echo "${encoded}"    # You can either set a return variable (FASTER)
  REPLY="${encoded}"   #+or echo the result (EASIER)... or both... :p
}
