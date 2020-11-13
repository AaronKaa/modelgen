//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

let ManualTypes = Set([
	"io.k8s.apimachinery.pkg.api.resource.Quantity",
	"io.k8s.apimachinery.pkg.util.intstr.IntOrString",
])

let JSONTypes = [
	"io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps": PropertyType.map(valueType: .any),
	"io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps": PropertyType.map(valueType: .any),
	"io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1": PropertyType.map(valueType: .any),
	"io.k8s.apimachinery.pkg.apis.meta.v1.Patch": PropertyType.map(valueType: .any),
	"io.k8s.apimachinery.pkg.runtime.RawExtension": PropertyType.map(valueType: .any),
]

let ConvertedTypes = [
	"io.k8s.apimachinery.pkg.apis.meta.v1.MicroTime": PropertyType.date,
	"io.k8s.apimachinery.pkg.apis.meta.v1.Time": PropertyType.date,
]

let IgnoredSchemaTypes = Set([
	"io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.JSON",
	"io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1beta1.JSON",
	"io.k8s.apimachinery.pkg.api.resource.Quantity",
	"io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1",
	"io.k8s.apimachinery.pkg.apis.meta.v1.MicroTime",
	"io.k8s.apimachinery.pkg.apis.meta.v1.Patch",
	"io.k8s.apimachinery.pkg.apis.meta.v1.Time",
	"io.k8s.apimachinery.pkg.runtime.RawExtension",
	"io.k8s.apimachinery.pkg.version.Info",
	"io.k8s.apimachinery.pkg.util.intstr.IntOrString",
])

let APITypes = Set([
	"Addon",
	"APIService",
	"Binding",
	"CertificateSigningRequest",
	"ClusterRole",
	"ClusterRoleBinding",
	"ComponentStatus",
	"ConfigMap",
	"ControllerRevision",
	"CronJob",
	"CSIDriver",
	"CSINode",
	"CustomResourceDefinition",
	"DaemonSet",
	"Deployment",
	"Endpoints",
	"EndpointSlice",
	"Event",
	"HelmChart",
	"HorizontalPodAutoscaler",
	"Ingress",
	"IngressClass",
	"Job",
	"Lease",
	"LimitRange",
	"LocalSubjectAccessReview",
	"MutatingWebhookConfiguration",
	"Namespace",
	"NetworkPolicy",
	"Node",
	"NodeMetrics",
	"PersistentVolume",
	"PersistentVolumeClaim",
	"Pod",
	"PodDisruptionBudget",
	"PodMetrics",
	"PodSecurityPolicy",
	"PodTemplate",
	"PriorityClass",
	"ReplicaSet",
	"ReplicationController",
	"ResourceQuota",
	"Role",
	"RoleBinding",
	"RuntimeClass",
	"Secret",
	"SelfSubjectAccessReview",
	"SelfSubjectRulesReview",
	"Service",
	"ServiceAccount",
	"StatefulSet",
	"StorageClass",
	"SubjectAccessReview",
	"TokenReview",
	"ValidatingWebhookConfiguration",
	"VolumeAttachment"
])

let PluralNames = [
	"Addon": "addons",
	"APIService": "apiservices",
	"Binding": "bindings",
	"CertificateSigningRequest": "certificatesigningrequests",
	"ClusterRole": "clusterroles",
	"ClusterRoleBinding": "clusterrolebindings",
	"ComponentStatus": "componentstatuses",
	"ConfigMap": "configmaps",
	"ControllerRevision": "controllerrevisions",
	"CronJob": "cronjobs",
	"CSIDriver": "csidrivers",
	"CSINode": "csinodes",
	"CustomResourceDefinition": "customresourcedefinitions",
	"DaemonSet": "daemonsets",
	"Deployment": "deployments",
	"Endpoints": "endpoints",
	"EndpointSlice": "endpointslices",
	"Event": "events",
	"HelmChart": "helmcharts",
	"HorizontalPodAutoscaler": "horizontalpodautoscalers",
	"Ingress": "ingresses",
	"IngressClass": "ingressclasses",
	"Job": "jobs",
	"Lease": "leases",
	"LimitRange": "limitranges",
	"LocalSubjectAccessReview": "localsubjectaccessreviews",
	"MutatingWebhookConfiguration": "mutatingwebhookconfigurations",
	"Namespace": "namespaces",
	"NetworkPolicy": "networkpolicies",
	"Node": "nodes",
	"NodeMetrics": "nodes",
	"PersistentVolume": "persistentvolumes",
	"PersistentVolumeClaim": "persistentvolumeclaims",
	"Pod": "pods",
	"PodDisruptionBudget": "poddisruptionbudgets",
	"PodMetrics": "pods",
	"PodSecurityPolicy": "podsecuritypolicies",
	"PodTemplate": "podtemplates",
	"PriorityClass": "priorityclasses",
	"ReplicaSet": "replicasets",
	"ReplicationController": "replicationcontrollers",
	"ResourceQuota": "resourcequotas",
	"Role": "roles",
	"RoleBinding": "rolebindings",
	"RuntimeClass": "runtimeclasses",
	"Secret": "secrets",
	"SelfSubjectAccessReview": "selfsubjectaccessreviews",
	"SelfSubjectRulesReview": "selfsubjectrulesreviews",
	"Service": "services",
	"ServiceAccount": "serviceaccounts",
	"StatefulSet": "statefulsets",
	"StorageClass": "storageclasses",
	"SubjectAccessReview": "subjectaccessreviews",
	"TokenReview": "tokenreviews",
	"ValidatingWebhookConfiguration": "validatingwebhookconfigurations",
	"VolumeAttachment": "volumeattachments",
]

let ShortNames = [
	"CertificateSigningRequest": "csr",
	"ComponentStatus": "cs",
	"ConfigMap": "cm",
	"CronJob": "cj",
	"CustomResourceDefinition": "crd" ,
	"DaemonSet": "ds",
	"Deployment": "deploy",
	"Endpoints": "ep",
	"Event": "ev",
	"HorizontalPodAutoscaler": "hpa",
	"Ingress": "ing",
	"LimitRange": "limits",
	"Namespace": "ns",
	"NetworkPolicy": "netpol",
	"Node": "no",
	"PersistentVolume": "pv",
	"PersistentVolumeClaim": "pvc",
	"Pod": "po",
	"PodDisruptionBudget": "pdb",
	"PodSecurityPolicy": "psp",
	"PriorityClass": "pc",
	"ReplicaSet": "rs",
	"ReplicationController": "rc",
	"ResourceQuota": "quota",
	"Service": "svc",
	"ServiceAccount": "sa",
	"StatefulSet": "sts",
	"StorageClass": "sc"
]

let NamespaceScope = [
	"Addon": true,
	"APIService": false,
	"Binding": true,
	"CertificateSigningRequest": false,
	"ClusterRole": false,
	"ClusterRoleBinding": false,
	"ComponentStatus": false,
	"ConfigMap": true,
	"ControllerRevision": true,
	"CronJob": true,
	"CSIDriver": false,
	"CSINode": false,
	"CustomResourceDefinition": false,
	"DaemonSet": true,
	"Deployment": true,
	"Endpoints": true,
	"EndpointSlice": true,
	"Event": true,
	"HelmChart": true,
	"HorizontalPodAutoscaler": true,
	"Ingress": true,
	"IngressClass": false,
	"Job": true,
	"Lease": true,
	"LimitRange": true,
	"LocalSubjectAccessReview": true,
	"MutatingWebhookConfiguration": false,
	"Namespace": false,
	"NetworkPolicy": true,
	"Node": false,
	"NodeMetrics": false,
	"PersistentVolume": false,
	"PersistentVolumeClaim": true,
	"Pod": true,
	"PodDisruptionBudget": true,
	"PodMetrics": true,
	"PodSecurityPolicy": false,
	"PodTemplate": true,
	"PriorityClass": false,
	"ReplicaSet": true,
	"ReplicationController": true,
	"ResourceQuota": true,
	"Role": true,
	"RoleBinding": true,
	"RuntimeClass": false,
	"Secret": true,
	"SelfSubjectAccessReview": false,
	"SelfSubjectRulesReview": false,
	"Service": true,
	"ServiceAccount": true,
	"StatefulSet": true,
	"StorageClass": false,
	"SubjectAccessReview": false,
	"TokenReview": false,
	"ValidatingWebhookConfiguration": false,
	"VolumeAttachment": false

]
