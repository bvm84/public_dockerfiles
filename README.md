# public_dockerfiles
A set of dockerfiles teamplates for different purposes
docker build -t bvm84/alpine_nginx_unit_scikit-learn:v0.1 -t bvm84/alpine_nginx_unit_scikit-learn:latest  -f alpine_unit_scikit-learn.Dockerfile .
docker build -t bvm84/ubuntu_unit_scikit-learn:v0.1 -t bvm84/ubuntu_unit_scikit-learn:latest -f ubuntu_unit_scikit-learn.Dockerfile .
docker build -t bvm84/ubuntu_waitress_scikit-learn:v0.1 -t bvm84/ubuntu_waitress_scikit-learn:latest -f ubuntu_waitress_scikit-learn.Dockerfile .

docker image push bvm84/alpine_nginx_unit_scikit-learn:latest
docker image push bvm84/ubuntu_unit_scikit-learn:latest
docker image push bvm84/ubuntu_waitress_scikit-learn:latest