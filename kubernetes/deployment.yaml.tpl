apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello-app
  labels:
    app: hello-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hello-app
  template:
    metadata:
      labels:
        app: hello-app
      annotations:
#        alpha.image-policy.k8s.io/break-glass: "true"
    spec:
      containers:
      - name: hello-app
        image: gcr.io/niveusanthos/hello-app:latest
        ports:
        - containerPort: 8080