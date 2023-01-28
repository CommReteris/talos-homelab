helm upgrade -i  nvidia-device-plugin nvdp/nvidia-device-plugin \
    --version=0.13.0 \
    --set=runtimeClassName=nvidia \
    --dependency-update \
    --atomic \
    --debug \
    --devel  \ 
    --namespace nvidia-device-plugin \
    --create-namespace \
    --set gfd.enabled=true
