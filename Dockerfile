FROM busybox:glibc

#COPY ./lantern_linux_amd64 /lantern_linux_amd64
COPY ./lantern_linux_amd64.xz /lantern_linux_amd64.xz
RUN xz -d /lantern_linux_amd64.xz

COPY ./lib /lib
COPY ./tmp /tmp

EXPOSE 8787

CMD ["/lantern_linux_amd64", "-addr", "0.0.0.0:8787"]

