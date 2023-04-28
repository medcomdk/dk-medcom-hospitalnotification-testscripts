### Test examples

The examples presented below are intended to be used in with the test protocol for receiving HospitalNotification. Testprotocols can be found on the [GitHub pages for HospitalNotificaton](https://medcomdk.github.io/dk-medcom-hospitalnotification/#2-test-and-certification).


|  Test example     |     Description     |
|---|---|
| [STIN_A](./Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html) | Notification with   information that a citizen has been admitted to hospital (including request   for XDIS16)    |
| [STIN_B1]()<br> [STIN_B2]()    | Notification   with information that a citizen has been admitted to hospital X, region X   (including request for XDIS16) <br> Notification with   information that the same citizen has now been admitted to hospital Y, region   Y (does not include a request for XDIS16)    |
| [STIN_C1]()<br> [STIN_C2]()    | Notification with information that a citizen has been admitted to hospital X, region X   (including request for XDIS16) <br> Notification with   information that the same citizen has now been admitted to hospital Y, region   X (does not include a request for XDIS16)    |
| [STAA_D]()    | Notification with information that a citizen is admitted as an acute outpatient   at the hospital (Including request for XDIS16)     |
| [STAA_E]()<br> [STIN_E]()    | Notification   with information that a citizen is admitted to hospital as an acute ambulant   patient (including request for XDIS16) <br> Notification with   information that the same citizen has now been admitted to hospital (does not   include a request for XDIS16)    |
| [STIN_F]()<br> [STOR_F]()    | Notification with   information that a citizen has been admitted to hospital (including request   for XDIS16) <br> Notification   with information that the same citizen is taking leave from the hospital stay   (does not include a request for XDIS16)    |
| [STIN_G]()<br> [STOR_G]()<br> [SLOR_G]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification   with information that the same citizen is taking leave from hospital (does not   include a request for XDIS16) <br> Notification with   information that the same citizen has now ended leave from hospital stay (does not   include a request for XDIS16)    |
| [STIN_H]()<br> [SLHJ_H]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification with   information that the same citizen has been discharged and sent home/to   primary sector (does not include a request for XDIS16)    |
| [STIN_I]()<br> [STOR_I]()<br> [SLHJ_I]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification   with information that the same citizen is taking leave from hospital (does not   include a request for XDIS16) <br> Notification with   information that the same citizen has been discharged and sent home/to   primary sector (does not include a request for XDIS16)    |
| [MORS_J]()    | Notification with information that a citizen is dead     |
| [STIN_K]()<br> [MORS_K]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification with   information that the same citizen has died     |
| [STIN_L]()<br> [STOR_L]()<br> [MORS_L]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification   with information that the same citizen is taking leave from hospital (does   not include a request for XDIS16) <br> Notification with   information that the same citizen has died (during leave)    |
| [STIN_M]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16)    |
| [STIN_N]()<br> [AN_STIN_N]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification with   information that the notification just sent is cancelled (does not   include a request for XDIS16)    |
| [STIN_O]()<br> [RE_STIN_O]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification with   corrections to the notification just sent (date/time corrected) (does not include   a request for XDIS16)    |
| [STIN_P]()<br> [RE_STIN_P]()    | Notification   with information that a citizen has been admitted to hospital (including   request for XDIS16) <br> Notification with   corrections to the notification just sent (department corrected) (does not include   a request for XDIS16)    |
| [TEK_STIN_A]()    | Notification   with information that a citizen has been admitted to hospital (including   request for Acknowledgement) <br>      |
| [TEK_STAA_A]()    | Notification   with information that the same citizen is admitted as an acute outpatient at   the hospital    |
| [TEK_SLHJ_A]()    | Notification   with information that the same citizen has now been discharged and sent   home/to primary sector.    |
| [TEK_STIN_B]()    | Notification   with information that a citizen has been admitted to hospital.    |
| [TEK_DUB]()    | Notification with information that a citizen has been admitted to   hospital (Used to test correct handling of duplicates)     |
| [TEK_LOV]()    | Notification with information that a citizen has been admitted to   hospital (Used to test the correct handling of citizens who does not have a   relevant case in the SUT)     |
| [TEK_FCC]()    | Notification containing errors    |