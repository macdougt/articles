## Software Evaluation

I wanted to capture some thoughts about the evaluation of software and in particular software that can be used as part of a production system.

At the heart of any evaluation are the requirements for the software itself keeping in mind that requirements change and usually more is expected in the future. The requirements may dictate the weight given to the items on the list below.

Evaluation checklist 
--------------------

- Fitting license
  - license fits the requirements (e.g. LGPL may require us to share our code and that may be an issue)

- Applicability to workforce skill set/knowledge base
  - Does the software fit the intended users/maintainers (e.g. if the software is written in Go and requires tweaking do I have the correct knowledge base to handle the work)

- Simple to use for user (if applicable)
  - strong documentation
  - intuitive, discoverable UI
  - responsive

- Simple to use for a developer
  - concepts are easy to grasp and the code is easy to connect (abstractions make sense)
  - extensible in the necessary places
  - well documented APIs
  - many example/tutorials available
  - can deliver value in phases (i.e. value does not only come at the end)

- Scale
  - hello world may be easy, but are the complex use cases handled
  - performance

- Security
  - clear about problems and quickly remediate issues
  - presents clear security authorization, access and model, connecting with mature solutions

- Active
  - support and updates quickly available for high priority problems
  - follows an active release/update schedule  

- Test
  - testable
  - components can be easily mocked

- Deployment
  - easy to create environments (e.g. helm charts, docker images and files exist)

- Support
  - easy to find answers and help to problems

- Portable
  - can it be used anywhere (local, clouds (e.g.AWS, Azure, GCP))
  - strong abstraction for environment

- Connectability
  - Will the software connect in the pipeline of software requiring attainable inputs and providing the proper outputs that can be transformed if necessary

- Maturity
  - many examples exist that demonstrate the uses/features
  - has it been adopted by many users/developers
  - has it been tested
  - is it secure

- Swapability
  - can it be swapped easily

- Intended audience
  - if intended for production use, does the software target production use or developer tooling
