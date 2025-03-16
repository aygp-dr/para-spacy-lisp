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
 :text "--«Oui, c’est probable qu’on nous regarde à cette heure-ci, dans cette
campagne fréquentée, dit ironiquement son amie. Et puis quoi?
Ajouta-t-elle (en croyant devoir accompagner d’un clignement d’yeux
malicieux et tendre, ces mots qu’elle récita par bonté, comme un
texte, qu’elle savait être agréable à Mlle Vinteuil, d’un ton qu’elle
s’efforçait de rendre cynique), quand même on nous verrait ce n’en est
que meilleur.»"
 :tokens 64
 :processed-at "2025-03-16T02:18:14.155179"
 :entities (list
  (entity :text "--«Oui," :label "ORG" :start 0 :end 7) (entity :text "Mlle" :label "ORG" :start 304 :end 308) (entity :text "Vinteuil," :label "ORG" :start 309 :end 318)
 )
 :sentences (list
  (sentence :text "--«Oui, c’est probable qu’on nous regarde à cette heure-ci, dans cette
campagne fréquentée, dit ironiquement son amie" :start 0 :end 117) (sentence :text "Et puis quoi?
Ajouta-t-elle (en croyant devoir accompagner d’un clignement d’yeux
malicieux et tendre, ces mots qu’elle récita par bonté, comme un
texte, qu’elle savait être agréable à Mlle Vinteuil, d’un ton qu’elle
s’efforçait de rendre cynique), quand même on nous verrait ce n’en est
que meilleur" :start 118 :end 419) (sentence :text "»" :start 420 :end 421)
 ))