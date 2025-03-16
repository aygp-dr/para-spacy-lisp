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
 :text "--Oriane (ici Mme des Laumes regarda d’un air étonné et rieur un tiers
invisible vis-à-vis duquel elle semblait tenir à attester qu’elle
n’avait jamais autorisé Mme de Gallardon à l’appeler par son prénom),
je tiendrais beaucoup à ce que tu viennes un moment demain soir chez
moi entendre un quintette avec clarinette de Mozart. Je voudrais avoir
ton appréciation."
 :tokens 59
 :processed-at "2025-03-16T02:18:14.670643"
 :entities (list
  (entity :text "--Oriane" :label "ORG" :start 0 :end 8) (entity :text "Laumes" :label "ORG" :start 22 :end 28) (entity :text "Gallardon" :label "ORG" :start 168 :end 177) (entity :text "Mozart." :label "ORG" :start 321 :end 328)
 )
 :sentences (list
  (sentence :text "--Oriane (ici Mme des Laumes regarda d’un air étonné et rieur un tiers
invisible vis-à-vis duquel elle semblait tenir à attester qu’elle
n’avait jamais autorisé Mme de Gallardon à l’appeler par son prénom),
je tiendrais beaucoup à ce que tu viennes un moment demain soir chez
moi entendre un quintette avec clarinette de Mozart" :start 0 :end 327) (sentence :text "Je voudrais avoir
ton appréciation" :start 328 :end 363)
 ))