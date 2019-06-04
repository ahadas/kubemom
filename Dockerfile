FROM python:3
RUN pip install kubernetes
RUN pip install prometheus_client requests
ADD mom/momd /
ADD mom/mom /mom
ADD kubevirt.conf.in /kubevirt.conf
ADD .kubeconfig /root/.kube/config
ENTRYPOINT [ "./momd", "-c", "kubevirt.conf" ]
