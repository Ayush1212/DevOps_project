kubeadm init --apiserver-advertise-address $(hostname -i) --pod-network-cidr 10.5.0.0/16

kubectl apply -f https://raw.githubusercontent.com/cloudnativelabs/kube-router/master/daemonset/kubeadm-kuberouter.yml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/website/master/content/en/examples/application/ngnix-app.yml


