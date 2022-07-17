# Please edit the object below. Lines beginning with a '#' will be ignored,
# and an empty file will abort the edit. If an error occurs while saving this file will be
# reopened with the relevant failures.
#
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
    nginx.ingress.kubernetes.io/ssl-redirect: "false"
  creationTimestamp: "2022-07-12T03:57:56Z"
  generation: 6
  name: ingress-wear-watch
  namespace: app-space
  resourceVersion: "2971"
  uid: c3fca737-7377-4b05-9eac-bfbdd77d000b
spec:
  rules:
  - http:
      paths:
      - backend:
          service:
            name: wear-service
            port:
              number: 8080
        path: /wear
        pathType: Prefix
      - backend:
          service:
            name: video-service
            port:
              number: 8080
        path: /stream
        pathType: Prefix
      - backend:
          service:
            name: food-service
            port:
              number: 8080
        path: /eat
        pathType: Prefix
status:
  loadBalancer:
    ingress:
    - ip: 10.106.124.53
~                                                                                                                                                                                                                                                           
~                                                           