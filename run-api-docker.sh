docker build -t fanout-helper-api-v2 -f ./dockerfile ./ &&
  docker run -it -p 2345:80 --rm fanout-helper-api-v2