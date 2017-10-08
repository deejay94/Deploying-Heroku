#!/bin/bash

API="${API_ORIGIN:-https://deejay94.herokuapp.com}"
URL_PATH="/favorite_movies/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
