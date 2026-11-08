# Historical Local AI preview assets

The following records describe the retired private Local AI preview, not the
current Termux Job’s 2.1.7 application. They preserve provenance, license and
validation limits. Assets, manifests and hashes remain unchanged. The application
no longer includes this inference integration. See the [current catalogue](../README.md).

## Optional Local AI model weights

[Local AI models v1](https://github.com/HezeAI/termux-jobs-components/releases/tag/local-ai-models-v1) mirrors five pinned GGUF files (the original four plus one optional Q4_0 variant) for the private Local AI preview of Termux Job’s. Existing graphics releases and their download URLs are unchanged. These are optional model downloads, not an app update, and are not included in the APK.

| Model | Quantization | GGUF bytes | Publisher |
| --- | --- | ---: | --- |
| Qwen3.5-9B | Q6_K | 7,458,301,152 | [unsloth/Qwen3.5-9B-GGUF](https://huggingface.co/unsloth/Qwen3.5-9B-GGUF) |
| Qwen2.5-Coder-7B-Instruct | Q5_K_M | 5,444,831,232 | [Qwen/Qwen2.5-Coder-7B-Instruct-GGUF](https://huggingface.co/Qwen/Qwen2.5-Coder-7B-Instruct-GGUF) |
| Qwen2.5-Coder-7B-Instruct | Q4_0 | 4,431,390,720 | [Qwen/Qwen2.5-Coder-7B-Instruct-GGUF](https://huggingface.co/Qwen/Qwen2.5-Coder-7B-Instruct-GGUF) |
| Qwen2.5-Coder-14B-Instruct | Q4_K_M | 8,988,110,272 | [Qwen/Qwen2.5-Coder-14B-Instruct-GGUF](https://huggingface.co/Qwen/Qwen2.5-Coder-14B-Instruct-GGUF) |
| Qwen3-14B | Q4_K_M | 9,001,752,960 | [Qwen/Qwen3-14B-GGUF](https://huggingface.co/Qwen/Qwen3-14B-GGUF) |

Original models: **Qwen**. The Qwen3.5 GGUF quantization is published by **Unsloth**; the other selected GGUF files are published by Qwen. Each upstream repository identifies its model license as **Apache-2.0**. Exact upstream revisions, original filenames and complete-GGUF SHA-256 values are recorded in [the catalogue](../local-ai-models-v1/catalogue.json). The model manifest and license notices are also included as release assets. No model weights are stored in Git history.

Each release asset must be smaller than GitHub’s 2 GiB limit, so a GGUF is distributed as numbered raw binary parts of at most 1,900,000,000 bytes. These are **byte segments, not GGUF shards or ZIP archives**. The app resumes them into one GGUF, validates the complete file against the pinned upstream SHA-256, and only then makes it available for inference. The [verified manifest](../local-ai-models-v1/models-manifest.json) lists each segment’s byte count, SHA-256 and final asset URL. All four complete-file hashes were checked against their pinned upstream hashes; GitHub’s digest of each of the 17 uploaded parts was also checked. These acquisition checks do not claim phone inference or model-quality validation. Do not select a single `.partNN` file as a model.

The preview uses an Android ARM64 CPU inference engine; these files do not imply GPU/NPU acceleration or guaranteed coding performance. Model weights, KV cache and runtime buffers all require RAM. In particular, 14B models may not fit with a large context on devices with about 10 GB available RAM. Only the selected model is downloaded, and one model is active at a time.

### Optional Q4_0 candidate for accelerator testing

The developer authorized appending **Coder 7B Q4_0** to the same models-v1
release. The original 19 assets, their IDs/digests, URLs and four-model manifest
remain unchanged. Three uniquely named raw segments and separate
`npu-models-extension-v1.json` / `LOCAL-AI-NPU-MODELS-NOTICES-v1.txt` assets were
added; the previous graphics release remains latest. See the
[Q4_0 extension manifest](../local-ai-models-v1/npu-models-extension-v1.json).

Source: **Qwen/Qwen2.5-Coder-7B-Instruct-GGUF**, revision
`13fb94bfda8c8cf22497dc57b78f391a9acb426a`, file
`qwen2.5-coder-7b-instruct-q4_0.gguf`, Apache-2.0. This is the publisher's GGUF,
not a requantization of the previously mirrored Q5_K_M file. Complete-file
SHA-256: `8561411b4705cbf2d105cf8e2084c6d6f1bcaba415249ce65fc5f21230d4961b`.
The 4,431,390,720 bytes and complete hash were verified on the isolated transfer
worker; GitHub verified each segment's digest. Public unauthenticated range URLs
were checked and the first segment has GGUF magic. No weights enter Git history.

Q4_0 is added as an **NPU-format candidate**, not a claim of completed Android
Hexagon inference validation or guaranteed speed. The private application work
adds explicit CPU/OpenCL/Hexagon choices; the previously distributed application
continues using its existing CPU runtime and unchanged model URLs. Accelerator
operator/device compatibility and partial CPU execution require testing.
