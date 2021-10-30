
## tensorflow serving docker

```
docker pull tensorflow/serving
```

## clone tensorflow serving example

```
git clone https://github.com/tensorflow/serving

```

## deploy tensorflow serving example

```
docker run -p 8501:8501 --mount type=bind,source=D:/Github/serving/tensorflow_serving/servables/tensorflow/testdata/saved_model_half_plus_two_cpu,target=/models/half_plus_two -e MODEL_NAME=half_plus_two -t tensorflow/serving '&'
```

## request with REST API from client to local host, depend on tensorflow serving example

```
curl -XPOST http://localhost:8501/v1/models/half_plus_two:predict -d "{\"instances\":[1.0, 2.0, 5.0]}"
```

## deploy myself training models

```
docker run -p 8501:8501 --name tfserving_classifier --mount type=bind,source=D:/Github/tf2-serving/mnist/saved,target=/models/saved -e MODEL_NAME=saved -t tensorflow/serving
```


## tensorflow docker

```
docker run -it --rm tensorflow/tensorflow python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
```

