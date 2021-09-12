cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
stdout: output.txt
inputs:
  message:
    type: string
    inputBinding:
      position: 1
  newmessage:
    type: string
    inputBinding:
      position: 2
outputs:
  output:
    type: stdout
