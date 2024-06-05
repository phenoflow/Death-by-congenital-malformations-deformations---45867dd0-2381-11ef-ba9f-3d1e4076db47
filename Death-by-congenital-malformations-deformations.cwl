cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-congenital-malformations-deformations-testi---secondary:
    run: death-by-congenital-malformations-deformations-testi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  normal-death-by-congenital-malformations-deformations---secondary:
    run: normal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-testi---secondary/output
  nervous-death-by-congenital-malformations-deformations---secondary:
    run: nervous-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: normal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-pectus---secondary:
    run: death-by-congenital-malformations-deformations-pectus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: nervous-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-artery---secondary:
    run: death-by-congenital-malformations-deformations-artery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-pectus---secondary/output
  persistent-death-by-congenital-malformations-deformations---secondary:
    run: persistent-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-artery---secondary/output
  death-by-congenital-malformations-deformations-heart---secondary:
    run: death-by-congenital-malformations-deformations-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: persistent-death-by-congenital-malformations-deformations---secondary/output
  pancreatic-death-by-congenital-malformations-deformations---secondary:
    run: pancreatic-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-heart---secondary/output
  death-by-congenital-malformations-deformations-insufficiency---secondary:
    run: death-by-congenital-malformations-deformations-insufficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: pancreatic-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-unspec---secondary:
    run: death-by-congenital-malformations-deformations-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-insufficiency---secondary/output
  urinary-death-by-congenital-malformations-deformations---secondary:
    run: urinary-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-unspec---secondary/output
  death-by-congenital-malformations-deformations-forearm---secondary:
    run: death-by-congenital-malformations-deformations-forearm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: urinary-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-brain---secondary:
    run: death-by-congenital-malformations-deformations-brain---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-forearm---secondary/output
  death-by-congenital-malformations-deformations-pelvi---secondary:
    run: death-by-congenital-malformations-deformations-pelvi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-brain---secondary/output
  death-by-congenital-malformations-deformations-intest---secondary:
    run: death-by-congenital-malformations-deformations-intest---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-pelvi---secondary/output
  death-by-congenital-malformations-deformations-dislocation---secondary:
    run: death-by-congenital-malformations-deformations-dislocation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-intest---secondary/output
  digestive-death-by-congenital-malformations-deformations---secondary:
    run: digestive-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-dislocation---secondary/output
  death-by-congenital-malformations-deformations-stature---secondary:
    run: death-by-congenital-malformations-deformations-stature---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: digestive-death-by-congenital-malformations-deformations---secondary/output
  hypertrophic-death-by-congenital-malformations-deformations---secondary:
    run: hypertrophic-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-stature---secondary/output
  longitudinal-death-by-congenital-malformations-deformations---secondary:
    run: longitudinal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: hypertrophic-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-present---secondary:
    run: death-by-congenital-malformations-deformations-present---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: longitudinal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-fused---secondary:
    run: death-by-congenital-malformations-deformations-fused---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-present---secondary/output
  death-by-congenital-malformations-deformations-subluxation---secondary:
    run: death-by-congenital-malformations-deformations-subluxation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-fused---secondary/output
  death-by-congenital-malformations-deformations-thorax---secondary:
    run: death-by-congenital-malformations-deformations-thorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-subluxation---secondary/output
  death-by-congenital-malformations-deformations-stricture---secondary:
    run: death-by-congenital-malformations-deformations-stricture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-thorax---secondary/output
  other-death-by-congenital-malformations-deformations---secondary:
    run: other-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-stricture---secondary/output
  death-by-congenital-malformations-deformations-hypospadia---secondary:
    run: death-by-congenital-malformations-deformations-hypospadia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: other-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-chamber---secondary:
    run: death-by-congenital-malformations-deformations-chamber---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-hypospadia---secondary/output
  death-by-congenital-malformations-deformations-bowing---secondary:
    run: death-by-congenital-malformations-deformations-bowing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-chamber---secondary/output
  polycystic-death-by-congenital-malformations-deformations---secondary:
    run: polycystic-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-bowing---secondary/output
  death-by-congenital-malformations-deformations-genitalia---secondary:
    run: death-by-congenital-malformations-deformations-genitalia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: polycystic-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-tract---secondary:
    run: death-by-congenital-malformations-deformations-tract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-genitalia---secondary/output
  death-by-congenital-malformations-deformations-outlet---secondary:
    run: death-by-congenital-malformations-deformations-outlet---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-tract---secondary/output
  death-by-congenital-malformations-deformations-accessory---secondary:
    run: death-by-congenital-malformations-deformations-accessory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-outlet---secondary/output
  death-by-congenital-malformations-deformations-diverticulum---secondary:
    run: death-by-congenital-malformations-deformations-diverticulum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-accessory---secondary/output
  death-by-congenital-malformations-deformations-varus---secondary:
    run: death-by-congenital-malformations-deformations-varus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-diverticulum---secondary/output
  right-death-by-congenital-malformations-deformations---secondary:
    run: right-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-varus---secondary/output
  musculoskeletal-death-by-congenital-malformations-deformations---secondary:
    run: musculoskeletal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: right-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-larynx---secondary:
    run: death-by-congenital-malformations-deformations-larynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: musculoskeletal-death-by-congenital-malformations-deformations---secondary/output
  aortic-death-by-congenital-malformations-deformations---secondary:
    run: aortic-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-larynx---secondary/output
  death-by-congenital-malformations-deformations-bullosa---secondary:
    run: death-by-congenital-malformations-deformations-bullosa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: aortic-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations---secondary:
    run: death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-bullosa---secondary/output
  death-by-congenital-malformations-deformations-organ---secondary:
    run: death-by-congenital-malformations-deformations-organ---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations---secondary/output
  precerebral-death-by-congenital-malformations-deformations---secondary:
    run: precerebral-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-organ---secondary/output
  death-by-congenital-malformations-deformations-indeterminate---secondary:
    run: death-by-congenital-malformations-deformations-indeterminate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: precerebral-death-by-congenital-malformations-deformations---secondary/output
  eyelid-death-by-congenital-malformations-deformations---secondary:
    run: eyelid-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-indeterminate---secondary/output
  death-by-congenital-malformations-deformations-trachea---secondary:
    run: death-by-congenital-malformations-deformations-trachea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: eyelid-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-orbit---secondary:
    run: death-by-congenital-malformations-deformations-orbit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-trachea---secondary/output
  lower-death-by-congenital-malformations-deformations---secondary:
    run: lower-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-orbit---secondary/output
  death-by-congenital-malformations-deformations-talipe---secondary:
    run: death-by-congenital-malformations-deformations-talipe---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: lower-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-tricuspid---secondary:
    run: death-by-congenital-malformations-deformations-tricuspid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-talipe---secondary/output
  atrial-death-by-congenital-malformations-deformations---secondary:
    run: atrial-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-tricuspid---secondary/output
  death-by-congenital-malformations-deformations-scrotum---secondary:
    run: death-by-congenital-malformations-deformations-scrotum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: atrial-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-translocation---secondary:
    run: death-by-congenital-malformations-deformations-translocation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-scrotum---secondary/output
  death-by-congenital-malformations-deformations-atresia---secondary:
    run: death-by-congenital-malformations-deformations-atresia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-translocation---secondary/output
  alimentary-death-by-congenital-malformations-deformations---secondary:
    run: alimentary-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-atresia---secondary/output
  death-by-congenital-malformations-deformations-dysplasia---secondary:
    run: death-by-congenital-malformations-deformations-dysplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: alimentary-death-by-congenital-malformations-deformations---secondary/output
  corneal-death-by-congenital-malformations-deformations---secondary:
    run: corneal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-dysplasia---secondary/output
  chromosomal-death-by-congenital-malformations-deformations---secondary:
    run: chromosomal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: corneal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-agenesis---secondary:
    run: death-by-congenital-malformations-deformations-agenesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: chromosomal-death-by-congenital-malformations-deformations---secondary/output
  unilateral-death-by-congenital-malformations-deformations---secondary:
    run: unilateral-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-agenesis---secondary/output
  atrioventricular-death-by-congenital-malformations-deformations---secondary:
    run: atrioventricular-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: unilateral-death-by-congenital-malformations-deformations---secondary/output
  great-death-by-congenital-malformations-deformations---secondary:
    run: great-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: atrioventricular-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-posterior---secondary:
    run: death-by-congenital-malformations-deformations-posterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: great-death-by-congenital-malformations-deformations---secondary/output
  mitral-death-by-congenital-malformations-deformations---secondary:
    run: mitral-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-posterior---secondary/output
  septal-death-by-congenital-malformations-deformations---secondary:
    run: septal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: mitral-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-oesophagu---secondary:
    run: death-by-congenital-malformations-deformations-oesophagu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: septal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-ichthyosis---secondary:
    run: death-by-congenital-malformations-deformations-ichthyosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-oesophagu---secondary/output
  death-by-congenital-malformations-deformations-palate---secondary:
    run: death-by-congenital-malformations-deformations-palate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-ichthyosis---secondary/output
  death-by-congenital-malformations-deformations-discordant---secondary:
    run: death-by-congenital-malformations-deformations-discordant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-palate---secondary/output
  death-by-congenital-malformations-deformations-pharynx---secondary:
    run: death-by-congenital-malformations-deformations-pharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-discordant---secondary/output
  death-by-congenital-malformations-deformations-respiratory---secondary:
    run: death-by-congenital-malformations-deformations-respiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-pharynx---secondary/output
  death-by-congenital-malformations-deformations-specified---secondary:
    run: death-by-congenital-malformations-deformations-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-respiratory---secondary/output
  short-death-by-congenital-malformations-deformations---secondary:
    run: short-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-specified---secondary/output
  death-by-congenital-malformations-deformations-lumbar---secondary:
    run: death-by-congenital-malformations-deformations-lumbar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: short-death-by-congenital-malformations-deformations---secondary/output
  autosomal-death-by-congenital-malformations-deformations---secondary:
    run: autosomal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-lumbar---secondary/output
  similar-death-by-congenital-malformations-deformations---secondary:
    run: similar-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: autosomal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-bladder---secondary:
    run: death-by-congenital-malformations-deformations-bladder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: similar-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-rectum---secondary:
    run: death-by-congenital-malformations-deformations-rectum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-bladder---secondary/output
  fetal-death-by-congenital-malformations-deformations---secondary:
    run: fetal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-rectum---secondary/output
  death-by-congenital-malformations-deformations-causes---secondary:
    run: death-by-congenital-malformations-deformations-causes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: fetal-death-by-congenital-malformations-deformations---secondary/output
  spinal-death-by-congenital-malformations-deformations---secondary:
    run: spinal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-causes---secondary/output
  death-by-congenital-malformations-deformations-nondisjunction---secondary:
    run: death-by-congenital-malformations-deformations-nondisjunction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: spinal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-urethra---secondary:
    run: death-by-congenital-malformations-deformations-urethra---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-nondisjunction---secondary/output
  vascular-death-by-congenital-malformations-deformations---secondary:
    run: vascular-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-urethra---secondary/output
  death-by-congenital-malformations-deformations-macrophthalmo---secondary:
    run: death-by-congenital-malformations-deformations-macrophthalmo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: vascular-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-stomach---secondary:
    run: death-by-congenital-malformations-deformations-stomach---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-macrophthalmo---secondary/output
  death-by-congenital-malformations-deformations-encephalocele---secondary:
    run: death-by-congenital-malformations-deformations-encephalocele---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-stomach---secondary/output
  death-by-congenital-malformations-deformations-cervix---secondary:
    run: death-by-congenital-malformations-deformations-cervix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-encephalocele---secondary/output
  death-by-congenital-malformations-deformations-patau---secondary:
    run: death-by-congenital-malformations-deformations-patau---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-cervix---secondary/output
  death-by-congenital-malformations-deformations-dysostosis---secondary:
    run: death-by-congenital-malformations-deformations-dysostosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-patau---secondary/output
  death-by-congenital-malformations-deformations-hydrocephalus---secondary:
    run: death-by-congenital-malformations-deformations-hydrocephalus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-dysostosis---secondary/output
  death-by-congenital-malformations-deformations-webbed---secondary:
    run: death-by-congenital-malformations-deformations-webbed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-hydrocephalus---secondary/output
  death-by-congenital-malformations-deformations-femur---secondary:
    run: death-by-congenital-malformations-deformations-femur---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-webbed---secondary/output
  death-by-congenital-malformations-deformations-classified---secondary:
    run: death-by-congenital-malformations-deformations-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-femur---secondary/output
  death-by-congenital-malformations-deformations-skull---secondary:
    run: death-by-congenital-malformations-deformations-skull---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-classified---secondary/output
  branchial-death-by-congenital-malformations-deformations---secondary:
    run: branchial-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-skull---secondary/output
  sacral-death-by-congenital-malformations-deformations---secondary:
    run: sacral-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: branchial-death-by-congenital-malformations-deformations---secondary/output
  medial-death-by-congenital-malformations-deformations---secondary:
    run: medial-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: sacral-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-karyotype---secondary:
    run: death-by-congenital-malformations-deformations-karyotype---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: medial-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-septum---secondary:
    run: death-by-congenital-malformations-deformations-septum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-karyotype---secondary/output
  upper-death-by-congenital-malformations-deformations---secondary:
    run: upper-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-septum---secondary/output
  death-by-congenital-malformations-deformations-hernia---secondary:
    run: death-by-congenital-malformations-deformations-hernia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: upper-death-by-congenital-malformations-deformations---secondary/output
  thoracic-death-by-congenital-malformations-deformations---secondary:
    run: thoracic-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-hernia---secondary/output
  death-by-congenital-malformations-deformations-sinus---secondary:
    run: death-by-congenital-malformations-deformations-sinus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: thoracic-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-finger---secondary:
    run: death-by-congenital-malformations-deformations-finger---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-sinus---secondary/output
  death-by-congenital-malformations-deformations-prometaphase---secondary:
    run: death-by-congenital-malformations-deformations-prometaphase---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-finger---secondary/output
  structural-death-by-congenital-malformations-deformations---secondary:
    run: structural-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-prometaphase---secondary/output
  death-by-congenital-malformations-deformations-phakomatoses---secondary:
    run: death-by-congenital-malformations-deformations-phakomatoses---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: structural-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-kidney---secondary:
    run: death-by-congenital-malformations-deformations-kidney---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-phakomatoses---secondary/output
  death-by-congenital-malformations-deformations-involving---secondary:
    run: death-by-congenital-malformations-deformations-involving---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-kidney---secondary/output
  death-by-congenital-malformations-deformations-girdle---secondary:
    run: death-by-congenital-malformations-deformations-girdle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-involving---secondary/output
  death-by-congenital-malformations-deformations-fibula---secondary:
    run: death-by-congenital-malformations-deformations-fibula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-girdle---secondary/output
  death-by-congenital-malformations-deformations-gland---secondary:
    run: death-by-congenital-malformations-deformations-gland---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-fibula---secondary/output
  death-by-congenital-malformations-deformations-coloboma---secondary:
    run: death-by-congenital-malformations-deformations-coloboma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-gland---secondary/output
  absent-death-by-congenital-malformations-deformations---secondary:
    run: absent-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-coloboma---secondary/output
  death-by-congenital-malformations-deformations-mosaicism---secondary:
    run: death-by-congenital-malformations-deformations-mosaicism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: absent-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-auricle---secondary:
    run: death-by-congenital-malformations-deformations-auricle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-mosaicism---secondary/output
  multiple-death-by-congenital-malformations-deformations---secondary:
    run: multiple-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-auricle---secondary/output
  fallopian-death-by-congenital-malformations-deformations---secondary:
    run: fallopian-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: multiple-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-integument---secondary:
    run: death-by-congenital-malformations-deformations-integument---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: fallopian-death-by-congenital-malformations-deformations---secondary/output
  portal-death-by-congenital-malformations-deformations---secondary:
    run: portal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-integument---secondary/output
  death-by-congenital-malformations-deformations-duplication---secondary:
    run: death-by-congenital-malformations-deformations-duplication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: portal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-aplasia---secondary:
    run: death-by-congenital-malformations-deformations-aplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-duplication---secondary/output
  death-by-congenital-malformations-deformations-vessel---secondary:
    run: death-by-congenital-malformations-deformations-vessel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-aplasia---secondary/output
  death-by-congenital-malformations-deformations-breast---secondary:
    run: death-by-congenital-malformations-deformations-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-vessel---secondary/output
  tracheooesophageal-death-by-congenital-malformations-deformations---secondary:
    run: tracheooesophageal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-breast---secondary/output
  death-by-congenital-malformations-deformations-doubling---secondary:
    run: death-by-congenital-malformations-deformations-doubling---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: tracheooesophageal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-aorta---secondary:
    run: death-by-congenital-malformations-deformations-aorta---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-doubling---secondary/output
  individual-death-by-congenital-malformations-deformations---secondary:
    run: individual-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-aorta---secondary/output
  death-by-congenital-malformations-deformations-nipple---secondary:
    run: death-by-congenital-malformations-deformations-nipple---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: individual-death-by-congenital-malformations-deformations---secondary/output
  facial-death-by-congenital-malformations-deformations---secondary:
    run: facial-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-nipple---secondary/output
  laryngeal-death-by-congenital-malformations-deformations---secondary:
    run: laryngeal-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: facial-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-circulatory---secondary:
    run: death-by-congenital-malformations-deformations-circulatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: laryngeal-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-vagina---secondary:
    run: death-by-congenital-malformations-deformations-vagina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-circulatory---secondary/output
  death-by-congenital-malformations-deformations-penis---secondary:
    run: death-by-congenital-malformations-deformations-penis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-vagina---secondary/output
  ectopic-death-by-congenital-malformations-deformations---secondary:
    run: ectopic-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-penis---secondary/output
  death-by-congenital-malformations-deformations-anomaly---secondary:
    run: death-by-congenital-malformations-deformations-anomaly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: ectopic-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-fragile---secondary:
    run: death-by-congenital-malformations-deformations-fragile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-anomaly---secondary/output
  hypoplastic-death-by-congenital-malformations-deformations---secondary:
    run: hypoplastic-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-fragile---secondary/output
  death-by-congenital-malformations-deformations-turner---secondary:
    run: death-by-congenital-malformations-deformations-turner---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: hypoplastic-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-scoliosis---secondary:
    run: death-by-congenital-malformations-deformations-scoliosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-turner---secondary/output
  death-by-congenital-malformations-deformations-tibia---secondary:
    run: death-by-congenital-malformations-deformations-tibia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-scoliosis---secondary/output
  death-by-congenital-malformations-deformations-ventricle---secondary:
    run: death-by-congenital-malformations-deformations-ventricle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-tibia---secondary/output
  complete-death-by-congenital-malformations-deformations---secondary:
    run: complete-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-ventricle---secondary/output
  arteriovenous-death-by-congenital-malformations-deformations---secondary:
    run: arteriovenous-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: complete-death-by-congenital-malformations-deformations---secondary/output
  cervical-death-by-congenital-malformations-deformations---secondary:
    run: cervical-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: arteriovenous-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-down's---secondary:
    run: death-by-congenital-malformations-deformations-down's---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: cervical-death-by-congenital-malformations-deformations---secondary/output
  complex-death-by-congenital-malformations-deformations---secondary:
    run: complex-death-by-congenital-malformations-deformations---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-down's---secondary/output
  death-by-congenital-malformations-deformations-hypoplasia---secondary:
    run: death-by-congenital-malformations-deformations-hypoplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: complex-death-by-congenital-malformations-deformations---secondary/output
  death-by-congenital-malformations-deformations-cleft---secondary:
    run: death-by-congenital-malformations-deformations-cleft---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-hypoplasia---secondary/output
  death-by-congenital-malformations-deformations-absce---secondary:
    run: death-by-congenital-malformations-deformations-absce---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-cleft---secondary/output
  death-by-congenital-malformations-deformations-fistula---secondary:
    run: death-by-congenital-malformations-deformations-fistula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-absce---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: death-by-congenital-malformations-deformations-fistula---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
