# docker build . --tag=stocks_prods_image
# docker run -d -p 7999:6060 --name=stocks_prods_container stocks_prods_image

# curl -X POST localhost:7999/api/v1/products/ -H 'Content-Type: application/json' -d '{"title":"t2", "description":"d2"}'
# curl localhost:7999/api/v1/products/


