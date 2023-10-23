#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing:
    - class: Directory
      location: invert-image
    - class: File
      location: examples/reference-image.jpg

inputs:
  filepath:
    type: string

outputs:
  inverted_file:
    type: File
    outputBinding:
      glob: reference-image-inverted.jpg

baseCommand:
- python
- invert-image
arguments:
- reference-image.jpg
