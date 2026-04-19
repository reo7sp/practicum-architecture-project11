# Task2Advanced

`.github/workflows/task2advanced.yml` - pipeline:
- на `pull_request`:
  - `terraform fmt -check`
  - `terraform init -backend=false`
  - `terraform validate`
- на ручной запуск:
  - `terraform init` с S3 backend
  - `terraform plan`
  - `terraform apply`, если `apply=true`

Что нужно в GitHub Secrets:

| Secret | Описание |
|---|---|
| `TF_VAR_cloud_id` | id облака |
| `TF_VAR_folder_id` | id каталога |
| `TF_VAR_token` | токен доступа к Yandex Cloud |
| `TF_VAR_vm_zone` | зона |
| `TF_VAR_vm_platform_id` | тип платформы |
| `TF_VAR_network_subnet_id` | id подсети |
| `TF_VAR_boot_disk_image_id` | id образа |
| `TF_VAR_vm_name` | имя виртуальной машины |
| `TF_VAR_vm_cores` | число ядер |
| `TF_VAR_vm_memory` | объём памяти |
| `TF_VAR_vm_core_fraction` | доля CPU |
| `TF_VAR_boot_disk_size` | размер загрузочного диска |
| `TF_VAR_boot_disk_type` | тип загрузочного диска |
| `TF_VAR_data_disk_name` | имя дополнительного диска |
| `TF_VAR_data_disk_size` | размер дополнительного диска |
| `TF_VAR_data_disk_type` | тип дополнительного диска |
| `TF_VAR_network_assign_public_ip` | включить внешний IP |
| `TF_VAR_ssh_user` | пользователь SSH |
| `TF_VAR_ssh_public_key` | публичный SSH-ключ |
| `TF_BACKEND_BUCKET` | имя бакета |
| `TF_BACKEND_KEY` | путь к terraform state |
| `TF_BACKEND_REGION` | регион |
| `TF_BACKEND_ENDPOINT` | адрес S3-compatible хранилища |
| `TF_BACKEND_ACCESS_KEY` | ключ доступа к backend |
| `TF_BACKEND_SECRET_KEY` | секретный ключ backend |
