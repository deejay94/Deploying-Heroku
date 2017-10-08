#!/bin/bash

API="${API_ORIGIN:-http://https://deejay94.herokuapp.com}"
URL_PATH="/favorite_movies"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "favorite_movie": {
      "title": "'"${TITLE}"'",
      "genre": "'"${GENRE}"'",
      "comment": "'"${COMMENT}"'"
    }
  }'


echo
