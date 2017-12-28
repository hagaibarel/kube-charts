{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "nginx-ingress.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified controller name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "nginx-ingress.controller.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" $name .Values.controller.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified default backend name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "nginx-ingress.defaultBackend.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" $name .Values.backend.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified stats-exporter name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "nginx-ingress.statsExporter.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" $name .Values.statsExporter.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}