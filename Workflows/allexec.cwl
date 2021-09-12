class: Workflow
cwlVersion: v1.0

inputs:
  message: string


steps:
  message:
    run: ../Tools/message.cwl
    in:
      message: message
    out: [output]

outputs:
  outfile:
    type: File
    outputSource: message/output
