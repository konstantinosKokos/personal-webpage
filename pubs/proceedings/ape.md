---
title: "Algebraic Positional Encodings"
date: 2023-12-27
authors: <u>Konstantinos Kogkalidis</u>, Jean-Philippe Bernardy, Vikas Garg
code: https://github.com/konstantinosKokos/ape
link: https://proceedings.neurips.cc/paper_files/paper/2024/hash/3d8f2fdc04fa66c9239f2eb14379546d-Abstract-Conference.html
venue: Proceedings of the 38th Conference on Neural Information Processing Systems (NeurIPS 2024)
---

We introduce a novel positional encoding strategy for Transformer-style models, addressing the shortcomings of existing, often ad hoc, approaches. Our framework provides a flexible mapping from the algebraic specification of a domain to an interpretation as orthogonal operators. This design preserves the algebraic characteristics of the source domain, ensuring that the model upholds the desired structural properties. Our scheme can accommodate various structures, including sequences, grids and trees, as well as their compositions. We conduct a series of experiments to demonstrate the practical applicability of our approach. Results suggest performance on par with or surpassing the current state-of-the-art, without hyperparameter optimizations or ``task search'' of any kind. Code will be made available at https://github.com/konstantinosKokos/unitaryPE.