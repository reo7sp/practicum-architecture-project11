# Task1Advanced

Параметры:

| Параметр | Описание |
|---|---|
| `vm_name` | имя виртуальной машины |
| `vm_zone` | зона |
| `vm_platform_id` | тип платформы |
| `vm_cores` | число ядер |
| `vm_memory` | объём памяти |
| `vm_core_fraction` | доля CPU |
| `boot_disk_image_id` | id образа |
| `boot_disk_size` | размер загрузочного диска |
| `boot_disk_type` | тип загрузочного диска |
| `data_disk_name` | имя дополнительного диска |
| `data_disk_size` | размер дополнительного диска |
| `data_disk_type` | тип дополнительного диска |
| `network_subnet_id` | id подсети |
| `network_assign_public_ip` | включить внешний IP |
| `ssh_user` | пользователь SSH |
| `ssh_public_key` | публичный SSH-ключ |

Outputs:

| Output | Описание |
|---|---|
| `vm_id` | id виртуальной машины |
| `vm_name` | имя виртуальной машины |
| `vm_internal_ip` | внутренний IP |
| `vm_external_ip` | внешний IP |
| `data_disk_id` | id дополнительного диска |
| `data_disk_name` | имя дополнительного диска |

Запуск:

```bash
cd Task1Advanced/envs/dev
terraform init
terraform apply -var-file=dev.tfvars

cd Task1Advanced/envs/stage
terraform init
terraform apply -var-file=stage.tfvars

cd Task1Advanced/envs/prod
terraform init
terraform apply -var-file=prod.tfvars
```
