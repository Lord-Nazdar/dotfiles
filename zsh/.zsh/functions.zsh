# Cookecutter (project templating)
function cookie() {
    cookiecutter ~/.cookies/$1
}

# Weather
function weather() {
    if [ "$1" = "" ]
    then
        curl http://wttr.in/graz
    else
        curl http://wttr.in/$1
    fi
}

# Curl JSON
function curljson() {
    curl $1 | python -m json.tool
}
