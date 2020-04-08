
查看集群信息
    kubectl cluster-info

创建网站
    kubectl create -f ./hello-kubernetes/static-site.yaml

查看启动过程
    kubectl get pods -w

端口转发到本地
    kubectl port-forward pods/static-site 9000:80

在本地查看网站
    curl localhost:9000

查看 Pod 的日志
    kubectl logs pods/static-site

把服务公开给外界访问（如果你的集群在云上，可使用 --type LoadBalancer）
    kubectl expose pods/static-site --type NodePort

查看服务端口或 IP
    kubectl get services/static-site

获取你的集群节点的 IP 地址并访问它
    
删除示例
    kubectl delete pod/static-site svc/static-site
