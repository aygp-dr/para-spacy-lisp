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
 :text "Aussi, ma grand’tante en usait-elle cavalièrement avec lui. Comme elle
croyait qu’il devait être flatté par nos invitations, elle trouvait
tout naturel qu’il ne vînt pas nous voir l’été sans avoir à la main un
panier de pêches ou de framboises de son jardin et que de chacun de
ses voyages d’Italie il m’eût rapporté des photographies de
chefs-d’œuvre."
 :tokens 59
 :processed-at "2025-03-16T02:18:13.802248"
 :entities (list
  (entity :text "Comme" :label "ORG" :start 60 :end 65)
 )
 :sentences (list
  (sentence :text "Aussi, ma grand’tante en usait-elle cavalièrement avec lui" :start 0 :end 58) (sentence :text "Comme elle
croyait qu’il devait être flatté par nos invitations, elle trouvait
tout naturel qu’il ne vînt pas nous voir l’été sans avoir à la main un
panier de pêches ou de framboises de son jardin et que de chacun de
ses voyages d’Italie il m’eût rapporté des photographies de
chefs-d’œuvre" :start 59 :end 351)
 ))