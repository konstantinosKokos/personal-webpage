---
title: "Structure-Aware Neural Representations of Agda Programs"
date: 2025-04-07
type: Contributed
at: "EuroProofNet-WG5: Theorem Proving and Machine Learning in the age of LLMs"
in: Edinburgh
venue_link: https://europroofnet.github.io/wg5-edinburgh25/
---

We introduce an ML-ready dataset for dependently-typed program-proofs in the Agda proof assistant, and present the underlying extraction tool. We then demonstrate how a bidirectional Transformer encoder retrofitted with structure-specific adjustments can achieve high performance in a realistic premise selection setup. Unlike most go-to LLM architectures, both the dataset and the neural model work in tandem to maximally preserve the typing information offered by Agda. The resulting pipeline is agnostic and impervious to most syntactic confounds, producing its inferences on the basis of type-structure alone. We provide empirical evidence that this makes for a general, robust, and efficient modeling approach.