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
 :text "--Mais justement elle voudrait déjeuner une fois avec vous. Nous allons
combiner ça, mais il ne faut pas que Swann le sache. Vous savez, il
met un peu de froid. Ça ne vous empêchera pas de venir dîner,
naturellement, nous espérons vous avoir très souvent. Avec la belle
saison qui vient, nous allons souvent dîner en plein air. Cela ne vous
ennuie pas les petits dîners au Bois? bien, bien, ce sera très gentil.
Est-ce que vous n’allez pas travailler de votre métier, vous!
cria-t-elle au petit pianiste, afin de faire montre, devant un nouveau
de l’importance de Forcheville, à la fois de son esprit et de son
pouvoir tyrannique sur les fidèles."
 :tokens 113
 :processed-at "2025-03-16T02:18:14.479391"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Nous" :label "ORG" :start 60 :end 64) (entity :text "Swann" :label "ORG" :start 109 :end 114) (entity :text "Vous" :label "ORG" :start 125 :end 129) (entity :text "Cela" :label "ORG" :start 328 :end 332) (entity :text "Bois?" :label "ORG" :start 373 :end 378) (entity :text "Forcheville," :label "ORG" :start 564 :end 576)
 )
 :sentences (list
  (sentence :text "--Mais justement elle voudrait déjeuner une fois avec vous" :start 0 :end 58) (sentence :text "Nous allons
combiner ça, mais il ne faut pas que Swann le sache" :start 59 :end 123) (sentence :text "Vous savez, il
met un peu de froid" :start 124 :end 159) (sentence :text "Ça ne vous empêchera pas de venir dîner,
naturellement, nous espérons vous avoir très souvent" :start 160 :end 254) (sentence :text "Avec la belle
saison qui vient, nous allons souvent dîner en plein air" :start 255 :end 326) (sentence :text "Cela ne vous
ennuie pas les petits dîners au Bois? bien, bien, ce sera très gentil" :start 327 :end 410) (sentence :text "Est-ce que vous n’allez pas travailler de votre métier, vous!
cria-t-elle au petit pianiste, afin de faire montre, devant un nouveau
de l’importance de Forcheville, à la fois de son esprit et de son
pouvoir tyrannique sur les fidèles" :start 411 :end 645)
 ))