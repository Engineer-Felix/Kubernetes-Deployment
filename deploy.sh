apiVersion: v1
kind: Pod
metadata:
  name: etech-app
  labels:
    app: etech-app
    type: back-end
spec:
  containers:
    - name: nginx
      image: nginx:1.14.2
      ports:
        - containerPort: 80

---
apiVersion: v1
kind: Service
metadata:
  name: etechapp-service
spec:
  type: NodePort
  selector:
    app: etech-app
    type: back-end
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80

