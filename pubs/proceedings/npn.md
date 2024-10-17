---
title: Neural Proof Nets
date: 2020-10-01
authors: <u>Konstantinos Kogkalidis</u>, Michael Moortgat and Richard Moot
code: https://github.com/konstantinosKokos/neural-proof-nets
link: https://www.aclweb.org/anthology/2020.conll-1.3
venue: Proceedings of the 24th Conference on Computational Natural Language Learning
type: "conference"
---

Linear logic and the linear λ-calculus have a long standing tradition in the study of natural language form and meaning. Among the proof calculi of linear logic, proof nets are of particular interest, offering an attractive geometric representation of derivations that is unburdened by the bureaucratic complications of conventional prooftheoretic formats. Building on recent advances in set-theoretic learning, we propose a neural variant of proof nets based on Sinkhorn networks, which allows us to translate parsing as the problem of extracting syntactic primitives and permuting them into alignment. Our methodology induces a batch-efficient, end-to-end differentiable architecture that actualizes a formally grounded yet highly efficient neuro-symbolic parser. We test our approach on ÆThel, a dataset of type-logical derivations for written Dutch, where it manages to correctly transcribe raw text sentences into proofs and terms of the linear λ-calculus with an accuracy of as high as 70%.