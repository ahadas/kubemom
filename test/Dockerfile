FROM python:3
RUN pip install kubernetes
RUN pip install prometheus_client requests
ADD .kubeconfig /root/.kube/config
ADD script.py /
ENTRYPOINT [ "python", "script.py" ]
