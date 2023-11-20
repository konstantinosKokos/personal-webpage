---
title: Improving BERT Pretraining with Syntactic Supervision
date: 2021-04-01
authors: Giorgos Tziafas, <b>Konstantinos Kogkalidis</b>, Gijs Wijnholds and Michael Moortgat
code: https://github.com/gtziafas/Type-Enhanced-Language-Modeling
link: https://aclanthology.org/2023.clasp-1.18/
venue: Proceedings of the 2023 CLASP Conference on Learning with Small Data (LSD)
---

Bidirectional masked Transformers have become the core theme in the current NLP landscape. Despite their impressive benchmarks, a recurring theme in recent research has been to question such models' capacity for syntactic generalization. In this work, we seek to address this question by adding a supervised, token-level supertagging objective to standard unsupervised pretraining, enabling the explicit incorporation of syntactic biases into the network's training dynamics. Our approach is straightforward to implement, induces a marginal computational overhead and is general enough to adapt to a variety of settings. We apply our methodology on Lassy Large, an automatically annotated corpus of written Dutch. Our experiments suggest that our syntax-aware model performs on par with established baselines, despite Lassy Large being one order of magnitude smaller than commonly used corpora. 