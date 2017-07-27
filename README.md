# kube-charts
Assortment of helm charts I wrote while working on various projects. <b>Use at your on risk!</b> 

Thess is by far <b>not</b> production grade charts (although some are used in production) and can't be used as is. 
Check the relevent docs in each chart folder for details on how to configure and use them.

Contirbuters are welcomed!

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