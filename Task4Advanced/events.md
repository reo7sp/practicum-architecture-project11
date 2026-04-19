# Events

## Patient Management

- `PatientRegistered`
  - Семантика: создан новый пациент
  - Минимальный контракт: `event_id`, `patient_id`, `registered_at`
- `PatientUpdated`
  - Семантика: обновлены данные пациента
  - Минимальный контракт: `event_id`, `patient_id`, `updated_at`, `changed_fields`

## Scheduling

- `AppointmentCreated`
  - Семантика: создана запись на приём
  - Минимальный контракт: `event_id`, `appointment_id`, `patient_id`, `doctor_id`, `start_at`
- `AppointmentConfirmed`
  - Семантика: приём подтверждён
  - Минимальный контракт: `event_id`, `appointment_id`, `confirmed_at`
- `AppointmentCancelled`
  - Семантика: приём отменён
  - Минимальный контракт: `event_id`, `appointment_id`, `cancelled_at`, `reason`

## Diagnostics

- `DiagnosticOrderCreated`
  - Семантика: назначено исследование
  - Минимальный контракт: `event_id`, `order_id`, `patient_id`, `study_type`, `created_at`
- `StudyCompleted`
  - Семантика: исследование выполнено
  - Минимальный контракт: `event_id`, `order_id`, `study_result_id`, `completed_at`
- `StudyResultSaved`
  - Семантика: результат исследования сохранён
  - Минимальный контракт: `event_id`, `study_result_id`, `order_id`, `saved_at`

## AI Inference

- `AiAnalysisRequested`
  - Семантика: исследование отправлено в ИИ
  - Минимальный контракт: `event_id`, `ai_job_id`, `study_result_id`, `requested_at`
- `AiConclusionReceived`
  - Семантика: получено заключение ИИ
  - Минимальный контракт: `event_id`, `ai_conclusion_id`, `ai_job_id`, `received_at`

## Billing

- `InvoiceIssued`
  - Семантика: счёт выставлен
  - Минимальный контракт: `event_id`, `invoice_id`, `patient_id`, `amount`, `issued_at`
- `PaymentReceived`
  - Семантика: оплата получена
  - Минимальный контракт: `event_id`, `payment_id`, `invoice_id`, `amount`, `received_at`

## Credit

- `LoanApplicationSubmitted`
  - Семантика: подана заявка на кредит
  - Минимальный контракт: `event_id`, `loan_application_id`, `customer_id`, `submitted_at`
- `LoanApproved`
  - Семантика: кредит одобрен
  - Минимальный контракт: `event_id`, `loan_application_id`, `approved_at`, `amount`
- `CreditContractCreated`
  - Семантика: создан кредитный договор
  - Минимальный контракт: `event_id`, `credit_contract_id`, `loan_application_id`, `created_at`
- `CreditPaymentReceived`
  - Семантика: платёж по кредиту получен
  - Минимальный контракт: `event_id`, `credit_contract_id`, `payment_id`, `amount`, `received_at`

## Inventory

- `StockWrittenOff`
  - Семантика: списан расходный материал
  - Минимальный контракт: `event_id`, `stock_item_id`, `quantity`, `written_off_at`
- `SupplyOrderCreated`
  - Семантика: создан заказ на поставку
  - Минимальный контракт: `event_id`, `supply_order_id`, `created_at`, `items`
