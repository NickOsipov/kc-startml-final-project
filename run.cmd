docker build -t kc-startml-final-project:latest .

docker stop kc-startml-final-project

docker run --rm -v %CD%:/app --name kc-startml-final-project -p 8000:8000 kc-startml-final-project:latest