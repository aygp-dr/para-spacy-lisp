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
 :text "Un mois après le jour où il avait lu la lettre adressée par Odette à
Forcheville, Swann alla à un dîner que les Verdurin donnaient au Bois.
Au moment où on se préparait à partir, il remarqua des conciliabules
entre Mme Verdurin et plusieurs des invités et crut comprendre qu’on
rappelait au pianiste de venir le lendemain à une partie à Chatou; or,
lui, Swann, n’y était pas invité."
 :tokens 69
 :processed-at "2025-03-16T02:18:14.550450"
 :entities (list
  (entity :text "Odette" :label "ORG" :start 60 :end 66) (entity :text "Forcheville," :label "ORG" :start 69 :end 81) (entity :text "Swann" :label "ORG" :start 82 :end 87) (entity :text "Verdurin" :label "ORG" :start 112 :end 120) (entity :text "Bois." :label "ORG" :start 134 :end 139) (entity :text "Verdurin" :label "ORG" :start 219 :end 227) (entity :text "Chatou;" :label "ORG" :start 337 :end 344) (entity :text "Swann," :label "ORG" :start 354 :end 360)
 )
 :sentences (list
  (sentence :text "Un mois après le jour où il avait lu la lettre adressée par Odette à
Forcheville, Swann alla à un dîner que les Verdurin donnaient au Bois" :start 0 :end 138) (sentence :text "Au moment où on se préparait à partir, il remarqua des conciliabules
entre Mme Verdurin et plusieurs des invités et crut comprendre qu’on
rappelait au pianiste de venir le lendemain à une partie à Chatou; or,
lui, Swann, n’y était pas invité" :start 139 :end 381)
 ))