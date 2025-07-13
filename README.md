# qemu-arm-chroot-env

QEMU 기반 ARM(32-bit, `armv7`) 환경을 실행할 수 있는 Docker 이미지
uClibc 기반 바이너리 실행을 지원하며, `qemu-arm-static`과 `rootfs` 환경이 통합되어 있어 곧바로 `chroot` 및 디버깅이 가능

---

## 🐳 DockerHub

https://hub.docker.com/repository/docker/atrlkwqr/qemu-arm-env/general


## 🛠 사용법

```bash
# Docker 컨테이너 실행
cd ~/workspace
docker run --rm -it --privileged  --platform linux/arm/v7 -v $(pwd):/mnt atrlkwqr/qemu-arm-env:latest

# 컨테이너 내에서 실행 예시
cd /mnt
qemu-arm-static -g 1234 -L /mnt/rootfs_mount /mnt/rootfs_mount/apps/skyeye/bin/kylin -f /exploit.json -l 3



```
<img width="1792" height="1120" alt="스크린샷 2025-07-13 오후 3 58 51" src="https://github.com/user-attachments/assets/b12d6bcd-699f-4b5a-b7d8-004d5481ce37" />
