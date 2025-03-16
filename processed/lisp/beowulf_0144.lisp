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
 :text "--«Mais non, c’est impossible, dit mon oncle, en haussant les épaules,
il est très tenu, il travaille beaucoup. Il a tous les prix à son
cours, ajouta-t-il, à voix basse pour que je n’entende pas ce mensonge
et que je n’y contredise pas. Qui sait, ce sera peut-être un petit
Victor Hugo, une espèce de Vaulabelle, vous savez.»"
 :tokens 58
 :processed-at "2025-03-16T02:18:13.936782"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Victor" :label "ORG" :start 275 :end 281) (entity :text "Hugo," :label "ORG" :start 282 :end 287) (entity :text "Vaulabelle," :label "ORG" :start 302 :end 313)
 )
 :sentences (list
  (sentence :text "--«Mais non, c’est impossible, dit mon oncle, en haussant les épaules,
il est très tenu, il travaille beaucoup" :start 0 :end 110) (sentence :text "Il a tous les prix à son
cours, ajouta-t-il, à voix basse pour que je n’entende pas ce mensonge
et que je n’y contredise pas" :start 111 :end 236) (sentence :text "Qui sait, ce sera peut-être un petit
Victor Hugo, une espèce de Vaulabelle, vous savez" :start 237 :end 324) (sentence :text "»" :start 325 :end 326)
 ))