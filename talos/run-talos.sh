#!/usr/bin/env bash
cd ~/talos-homelab/talos
#talhelper genconfig

#export TALOSCONFIG=~/dev/homelab/homelab/talos/clusterconfig/talosconfig

#talosctl config node "10.13.10.190"; talosctl config endpoint 10.13.10.190 10.13.10.191 10.13.10.192 10.13.10.98

echo Applying nano-0..
talosctl apply-config --insecure --nodes 10.13.10.190 --file clusterconfig/nanocluster-nano-0.yaml -e 10.13.10.190
echo Applying nano-1..
talosctl apply-config --insecure --nodes 10.13.10.191 --file clusterconfig/nanocluster-nano-1.yaml -e 10.13.10.191
echo Applying nano-2..
talosctl apply-config --insecure --nodes 10.13.10.192 --file clusterconfig/nanocluster-nano-2.yaml -e 10.13.10.192

echo Applying nano-3..
talosctl apply-config --insecure --nodes 10.13.10.193 --file clusterconfig/nanocluster-nano-3.yaml -e 10.13.10.193

echo Sleep..
sleep 180

echo Running bootstrap..
talosctl bootstrap

echo Sleep..
sleep 360

talosctl kubeconfig -f .
export KUBECONFIG=$(pwd)/kubeconfig

echo kubectl get no
kubectl get no
