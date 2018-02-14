# Fluent-Bit Chart

[Fluent Bit](http://fluentbit.io/) is an open source and multi-platform Log Forwarder.

## Chart Details

This chart will do the following:

* Install a configmap for Fluent Bit
* Install a daemonset that provisions Fluent Bit [per-host architecture]
* Optionally, install a proxy to sign and forward requests to AWS ES service

## Caution!

This chart was written and tested against kubernetes cluster version `1.9.1`, and uses the stable `apps/v1` resource group. Depending on your cluster version, you might need to change the `apiVersion` of the `deployment` and `daemonset` resources.

### Proxy settings

The proxy is based on [kopeio](https://github.com/kopeio/aws-es-proxy). Note that the proxy can work with either an IAM role (preferred) or static credentials, but not both.

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release <chart>
```

## Configuration

Configurable values are documented in the `values.yaml`.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm install --name my-release -f values.yaml <chart>
```

> **Tip**: You can use the default [values.yaml](values.yaml)
