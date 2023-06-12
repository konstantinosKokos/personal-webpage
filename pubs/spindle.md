---
title: "SPINDLE: Spinning Raw Text into Lambda Terms with Graph Attention"
date: 2023-03-01
authors: <b>Konstantinos Kogkalidis</b>, Michael Moortgat and Richard Moot
code: https://github.com/konstantinosKokos/spindle
link: https://aclanthology.org/2023.eacl-demo.15/
venue: "Proceedings of the 17th Conference of the European Chapter of the Association for Computational Linguistics: System Demonstrations"
type: workshop
---

This paper describes SPINDLE, an open source Python module, providing an efficient and accurate parser for written Dutch that transforms raw text input to programs for meaning composition expressed as λ terms. The parser integrates a number of breakthrough advances made in recent years. Its output consists of hi-res derivations of a multimodal type-logical grammar, capturing two orthogonal axes of syntax, namely deep function-argument structures and dependency relations. These are produced by three interdependent systems: a static type-checker asserting the well-formedness of grammatical analyses, a state-of-the-art, structurally-aware supertagger based on heterogeneous graph convolutions, and a massively parallel proof search component based on Sinkhorn iterations. Packed in the software are also handy utilities and extras for proof visualization and inference, intended to facilitate end-user utilization.