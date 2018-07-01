# Kubernetes Custom Metrics Adapter for Prometheus

Implementation of the kubernetes custom metrics API with prometheus as the metrics backend.

## Introduction

This chart bootstraps a custom metrics server with a prometheus adapter and registers the `custom.metrics.k8s.io/v1beta1` apiVersion.

## Installing the chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release nuvo/custom-metrics
```

## Default configuration

name | description | default values
---|---|---|
flags.prometheus-url | prometheus service | `http://prometheus-server/`

For other possible configuration values see [values.yaml](./values.yaml)

## Sources
* [Weave](https://www.weave.works/blog/kubernetes-horizontal-pod-autoscaler-and-prometheus) blog post
* [Github](https://github.com/DirectXMan12/k8s-prometheus-adapter) repository source code 

