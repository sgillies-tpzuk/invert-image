#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool

requirements:
  DockerRequirement:
    dockerPull: sgilliestpzuk/invert-image

inputs:
  out:
    type: string?
    inputBinding:
      prefix: -o
      position: 2
  file:
    type: File
    inputBinding:
      position: 1

outputs:
  inverted_file:
    type: File
    outputBinding:
      glob: '*.*'
