#!/bin/bash

API="${API_ORIGIN:-https://deejay94.herokuapp.com}"
URL_PATH="/favorite_movies/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
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
