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
 :text "--«Je le connais beaucoup, si cela pouvait vous faire plaisir qu’il
écrive un mot en tête de votre volume, je pourrais le lui demander.»
Je n’osai pas accepter mais posai à Swann des questions sur Bergotte.
«Est-ce que vous pourriez me dire quel est l’acteur qu’il préfère?»"
 :tokens 47
 :processed-at "2025-03-16T02:18:13.994248"
 :entities (list
  (entity :text "--«Je" :label "ORG" :start 0 :end 5) (entity :text "Swann" :label "ORG" :start 173 :end 178) (entity :text "Bergotte." :label "ORG" :start 197 :end 206)
 )
 :sentences (list
  (sentence :text "--«Je le connais beaucoup, si cela pouvait vous faire plaisir qu’il
écrive un mot en tête de votre volume, je pourrais le lui demander" :start 0 :end 134) (sentence :text "»
Je n’osai pas accepter mais posai à Swann des questions sur Bergotte" :start 135 :end 205) (sentence :text "«Est-ce que vous pourriez me dire quel est l’acteur qu’il préfère?»" :start 206 :end 274)
 ))