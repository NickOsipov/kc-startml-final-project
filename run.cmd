docker build -t kc:final-project .

docker stop kc-final-project

docker run --rm -v %CD%:/app --name kc-final-project -p 8000:8000 kc:final-project