curl --include --request PATCH "http://localhost:4741/favorite_movies/${ID}" \
--header "Content-Type: application/json" \
--data '{
  "favorite_movie": {
    "title": "'"${TITLE}"'"
    "genre": "'"${GENRE}"'"
    "comment": "'"${COMMENT}"'"
  }
}'
