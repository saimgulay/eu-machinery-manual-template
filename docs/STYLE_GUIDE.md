# Style Guide (Documentation-as-Code)

## Token policy (replace ALL before release)
Use explicit tokens and replace ALL before release:
- <MANUFACTURER_NAME>
- <MANUFACTURER_ADDRESS>
- <MACHINE_DESIGNATION>
- <MODEL_TYPE>
- <SERIAL_RANGE>
- <DOCUMENT_ID>
- <REVISION>
- <RELEASE_DATE>
- <LANGUAGE>
- <EU_DECLARATION_URL_OR_QR>
- <INTENDED_USE_SUMMARY>

## Evidence referencing
When you state a safety claim or instruction that depends on engineering facts, add:
- Evidence ID: EVID-XXXX
- Evidence path: evidence/_packs/.../...
- Hash: SHA256:...

## Minimum quality rules
- Clear, understandable, legible language.
- Avoid overload: only necessary information, but complete per legal checklist.
- Include foreseeable misuse warnings.
- Distinguish: DANGER / WARNING / CAUTION / NOTICE (define meaning).
