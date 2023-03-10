podman run \
   -d \
   --name newrelic-infra \
   --network=host \
   --cap-add=SYS_PTRACE \
   --privileged \
   --pid=host \
    -v /run/podman/podman.sock:/run/podman/podman.sock:ro \
    -v /proc/:/host/proc/:ro \
    -v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro \
   -e NRIA_LICENSE_KEY=XXXXXXXXXXXXXXXXXXX \
   -e DOCKER_HOST=unix:///run/podman/podman.sock \
   newrelic/infrastructure:latest
