#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing:
    - class: Directory
      location: invert-image

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

baseCommand:
- python
- invert-image
