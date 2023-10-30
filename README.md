# Computer Graphics

## 虚拟机迁移后无法联网

虚拟机迁移后遇到突然连不上网的问题

- 宿主windows中，settings -> Betwork & internet -> Advanced network settings，允许虚拟机的网络适配器

- 虚拟机中
  
  ```powershell
  sudo dhclient ens33
  ```
