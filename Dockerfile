FROM python:3
RUN pip install kubernetes --user
RUN pip install prometheus_client requests --user
ADD mom/momd /
ADD mom/mom /mom
ADD kubevirt.conf.in /kubevirt.conf
ADD .kubeconfig /root/.kube/config
ENTRYPOINT [ "python3", "momd", "-c", "kubevirt.conf" ]
