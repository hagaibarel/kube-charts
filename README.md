# kube-charts
Assortment of helm charts I wrote while working on various projects. <b>Use at your on risk!</b> 

These are by far <b>not</b> production grade charts (although some are used in production) and can't be used as is. 
Check the relevant docs in each chart folder for details on how to configure and use them.

Contributors are welcome!

## How to use

If you're unfamiliar with helm, take a look at the [project's github repo](https://github.com/kubernetes/helm).

Clone this repository and run from a terminal (assuming you have helm installed and configured):
```
helm install <chart-folder>/
```

## Contents

### curator

Curator: Tending your Elasticsearch indices. 

This chart uses [bobrik's](https://github.com/bobrik/docker-curator) docker curator image, kudos to you man!

More info regarding curator can be found in the [official repo](https://github.com/elastic/curator)

### k8s-aws-logging

Harvest logs with fluent-bit and ship them to AWS' ES service via proxy.

This chart uses the great proxy found here [kopeio](https://github.com/kopeio/aws-es-proxy), check it out. Also, the chart is based on the [fluent-bit](https://github.com/kubernetes/charts/tree/master/stable/fluent-bit) chart and was inspired by it.

### nginx-ingress-controller

Launch an ingress controller on AWS. 

This chart was inspired by the [examples found here](https://github.com/kubernetes/ingress/tree/master/examples/aws/nginx). Also, if you've used kops to launch your cluster and/or have the [dns-controller addon ](https://github.com/kubernetes/kops/tree/master/dns-controller), the chart supports configuration of a DNS record (via route53) to point to the ingress controller.

For a more robust solution, you should check out the official [nginx-ingress](https://github.com/kubernetes/charts/tree/master/stable/nginx-ingress) chart on the stable chart repository. This chart is heavily influenced by it, with some modifications to my liking.

### kafka-manager

A tool for managing Apache Kafka.

For more details on kafka-manager itself, please refer to the official [github repo](https://github.com/yahoo/kafka-manager). I'm using sheepkiller's docker [image](https://github.com/sheepkiller/kafka-manager-docker), check out the repo for more info.

### Custom Metrics

A chartified version of the guide found here - https://github.com/stefanprodan/k8s-prom-hpa

Features some helm magic in order to create the tls certificates on chart install