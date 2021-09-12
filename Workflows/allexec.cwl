# Workflow exec ../Tools/message.cwl
class: Workflow
cwlVersion: v1.0

inputs:
  message: string
  newmessage: string

steps:
  message:
    run: ../Tools/message.cwl
    in:
      message: message
      newmessage: newmessage
    out: [output]

outputs:
  outfile:
    type: File
    outputSource: message/output
