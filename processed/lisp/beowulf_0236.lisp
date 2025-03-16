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
 :text "--«Comptez-y, madame Octave, répondait le curé. Mais c’est justement
Monseigneur qui a attaché le grelot à cette malheureuse verrière en
prouvant qu’elle représente Gilbert le Mauvais, sire de Guermantes, le
descendant direct de Geneviève de Brabant qui était une demoiselle de
Guermantes, recevant l’absolution de Saint-Hilaire.»"
 :tokens 46
 :processed-at "2025-03-16T02:18:14.030683"
 :entities (list
  (entity :text "Octave," :label "ORG" :start 21 :end 28) (entity :text "Mais" :label "ORG" :start 48 :end 52) (entity :text "Monseigneur" :label "ORG" :start 69 :end 80) (entity :text "Gilbert" :label "ORG" :start 165 :end 172) (entity :text "Mauvais," :label "ORG" :start 176 :end 184) (entity :text "Guermantes," :label "ORG" :start 193 :end 204) (entity :text "Geneviève" :label "ORG" :start 229 :end 238) (entity :text "Brabant" :label "ORG" :start 242 :end 249) (entity :text "Guermantes," :label "ORG" :start 278 :end 289) (entity :text "Saint-Hilaire.»" :label "ORG" :start 315 :end 330)
 )
 :sentences (list
  (sentence :text "--«Comptez-y, madame Octave, répondait le curé" :start 0 :end 46) (sentence :text "Mais c’est justement
Monseigneur qui a attaché le grelot à cette malheureuse verrière en
prouvant qu’elle représente Gilbert le Mauvais, sire de Guermantes, le
descendant direct de Geneviève de Brabant qui était une demoiselle de
Guermantes, recevant l’absolution de Saint-Hilaire" :start 47 :end 328) (sentence :text "»" :start 329 :end 330)
 ))