docker run -p 8501:8501 --name tfserving_classifier --mount type=bind,source=D:/GitHub/tf2-serving/mnist/saved,target=/models/saved -e MODEL_NAME=saved -t tensorflow/serving