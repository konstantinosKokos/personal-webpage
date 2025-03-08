---
title: "LLM-free Representation Learning from Theorem Structure"
date: 2025-04-21
type: Invited
at: "Deep-Learning Models for Mathematics and Type Theory"
in: Gothenburg
venue_link: https://www.chalmers.se/en/current/calendar/deep-learning-models-for-mathematics-and-type-theory/
---

Sequential autoregressive models have become a popular backend for automated theorem proving due to their compatibility with pretrained language models. However, this approach reduces the inherently structured nature of theorems and proofs to sequential text, misrepresenting their syntax and semantics. In this work, we introduce a structural alternative tailored for dependent type theory. Our contributions include the first dataset of Agda program-proofs, extracted to capture fine-grained type-level details rather than surface-level representations. Using this dataset, we propose QUILL, a neural architecture designed to model the structural and relational aspects of dependently-typed programs. Despite its small size and limited training data, QUILL achieves strong results, surpassing traditional Transformer-style models by up to an order of magnitude on standard performance metrics. 