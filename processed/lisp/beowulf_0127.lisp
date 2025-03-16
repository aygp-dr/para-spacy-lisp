;; spaCy-lisp: 1.0.0
;; info:
;;   title: Text Analysis Schema
;;   description: Schema for NLP analysis of paragraphs using spaCy
;;   version: 1.0.0
;; components:
;;   schemas:
;;     TextAnalysis:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Original text content
;;         tokens:
;;           type: integer
;;           description: Number of tokens in the text
;;         processed-at:
;;           type: string
;;           format: date-time
;;           description: Timestamp of processing
;;         entities:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Entity'
;;           description: Named entities found in text
;;         sentences:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Sentence'
;;           description: Sentences in the text
;;     Entity:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the entity
;;         label:
;;           type: string
;;           description: Entity type label
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position
;;     Sentence:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the sentence
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position

(text-analysis
 :text "Plus tard, quand je fus au collège, chaque fois que pendant les
classes, je correspondais, aussitôt que le professeur avait la tête
tournée, avec un nouvel ami, ma première question était toujours pour
lui demander s’il était déjà allé au théâtre et s’il trouvait que le
plus grand acteur était bien Got, le second Delaunay, etc. Et si, à
son avis, Febvre ne venait qu’après Thiron, ou Delaunay qu’après
Coquelin, la soudaine motilité que Coquelin, perdant la rigidité de la
pierre, contractait dans mon esprit pour y passer au deuxième rang, et
l’agilité miraculeuse, la féconde animation dont se voyait doué
Delaunay pour reculer au quatrième, rendait la sensation du
fleurissement et de la vie à mon cerveau assoupli et fertilisé."
 :tokens 121
 :processed-at "2025-03-16T02:18:13.921509"
 :entities (list
  (entity :text "Plus" :label "ORG" :start 0 :end 4) (entity :text "Got," :label "ORG" :start 300 :end 304) (entity :text "Delaunay," :label "ORG" :start 315 :end 324) (entity :text "Febvre" :label "ORG" :start 349 :end 355) (entity :text "Thiron," :label "ORG" :start 375 :end 382) (entity :text "Delaunay" :label "ORG" :start 386 :end 394) (entity :text "Coquelin," :label "ORG" :start 404 :end 413) (entity :text "Coquelin," :label "ORG" :start 439 :end 448) (entity :text "Delaunay" :label "ORG" :start 610 :end 618)
 )
 :sentences (list
  (sentence :text "Plus tard, quand je fus au collège, chaque fois que pendant les
classes, je correspondais, aussitôt que le professeur avait la tête
tournée, avec un nouvel ami, ma première question était toujours pour
lui demander s’il était déjà allé au théâtre et s’il trouvait que le
plus grand acteur était bien Got, le second Delaunay, etc" :start 0 :end 328) (sentence :text "Et si, à
son avis, Febvre ne venait qu’après Thiron, ou Delaunay qu’après
Coquelin, la soudaine motilité que Coquelin, perdant la rigidité de la
pierre, contractait dans mon esprit pour y passer au deuxième rang, et
l’agilité miraculeuse, la féconde animation dont se voyait doué
Delaunay pour reculer au quatrième, rendait la sensation du
fleurissement et de la vie à mon cerveau assoupli et fertilisé" :start 329 :end 732)
 ))