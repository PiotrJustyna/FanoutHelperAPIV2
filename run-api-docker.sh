docker build -t fanout-helper-api-v1 -f ./dockerfile ./ &&
  docker run -it -p 2345:80 --rm fanout-helper-api-v1