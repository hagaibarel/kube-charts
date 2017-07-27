# kube-charts
Assortment of helm charts I wrote while working on various projects. <b>Use at your on risk!</b> 

Thess is by far <b>not</b> production grade charts (although some are used in production) and can't be used as is. 
Check the relevent docs in each chart folder for details on how to use them.

Contirbuters are welcomed!

## How to use

If you're unfamiliar with helm, take a look at the [project's repo](https://github.com/kubernetes/helm).

Clone this repository to your local machine, and run (assuming you have helm installed and configured):
```
helm install <chart-folder>/
```

## Contents

### curator

Curator: Tending your Elasticsearch indices

### k8s-aws-logging

Harvest logs with fluentd and ship them to AWS ES service via proxy.

This chart is based on the great proxy written by [kopeio](https://github.com/kopeio/aws-es-proxy), check out the repo for the sources.