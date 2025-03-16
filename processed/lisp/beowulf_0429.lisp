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
 :text "--«Mais ce sera un bonheur..., commençait à répondre Swann, quand le
docteur l’interrompit d’un air moqueur. En effet ayant retenu que dans
la conversation l’emphase, l’emploi de formes solennelles, était
suranné, dès qu’il entendait un mot grave dit sérieusement comme
venait de l’être le mot «bonheur», il croyait que celui qui l’avait
prononcé venait de se montrer prudhommesque. Et si, de plus, ce mot se
trouvait figurer par hasard dans ce qu’il appelait un vieux cliché, si
courant que ce mot fût d’ailleurs, le docteur supposait que la phrase
commencée était ridicule et la terminait ironiquement par le lieu
commun qu’il semblait accuser son interlocuteur d’avoir voulu placer,
alors que celui-ci n’y avait jamais pensé."
 :tokens 115
 :processed-at "2025-03-16T02:18:14.251429"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Swann," :label "ORG" :start 53 :end 59)
 )
 :sentences (list
  (sentence :text "--«Mais ce sera un bonheur" :start 0 :end 26) (sentence :text ", commençait à répondre Swann, quand le
docteur l’interrompit d’un air moqueur" :start 29 :end 107) (sentence :text "En effet ayant retenu que dans
la conversation l’emphase, l’emploi de formes solennelles, était
suranné, dès qu’il entendait un mot grave dit sérieusement comme
venait de l’être le mot «bonheur», il croyait que celui qui l’avait
prononcé venait de se montrer prudhommesque" :start 108 :end 381) (sentence :text "Et si, de plus, ce mot se
trouvait figurer par hasard dans ce qu’il appelait un vieux cliché, si
courant que ce mot fût d’ailleurs, le docteur supposait que la phrase
commencée était ridicule et la terminait ironiquement par le lieu
commun qu’il semblait accuser son interlocuteur d’avoir voulu placer,
alors que celui-ci n’y avait jamais pensé" :start 382 :end 727)
 ))