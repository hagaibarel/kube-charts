# kube-charts
Assortment of helm charts I wrote while working on various projects. <b>Use at your on risk!</b> 

These are by far <b>not</b> production grade charts (although some are used in production) and can't be used as is. 
Check the relevant docs in each chart folder for details on how to configure and use them.

Contributors are welcomed!

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

Harvest logs with fluentd and ship them to AWS' ES service via proxy.

This chart uses the great proxy written by [kopeio](https://github.com/kopeio/aws-es-proxy), check it out. Also, the chart is based on the elasticsearch-logging component that's part of [kubernetes' add-ons](https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch), and was inspired by it.

### nginx-ingress-controller

Launch an ingress controller on AWS. 

This chart was inspired by the [examples found here](https://github.com/kubernetes/ingress/tree/master/examples/aws/nginx). Also, if you've used kops to launch your cluster and/or have the [dns-controller addon ](https://github.com/kubernetes/kops/tree/master/dns-controller), the chart supports configuration of a DNS record (via route53) to point to the ingress controller.

For a more robust solution, you should check out the official [nginx-ingress](https://github.com/kubernetes/charts/tree/master/stable/nginx-ingress) chart on the stable chart repository.

## TODO
- [ ] Write documentation for each chart
- [ ] Add notes.txt for each chart to help guide folks after chart installation