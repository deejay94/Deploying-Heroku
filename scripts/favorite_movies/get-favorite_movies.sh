#!/bin/bash

API="${API_ORIGIN:-https://deejay94.herokuapp.com}"
URL_PATH="/favorite_movies"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
