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
 :text "--«Elle n’a pas dû être mal, Mme Verdurin, et puis c’est une femme avec
qui on peut causer, pour moi tout est là. Évidemment elle commence à
avoir un peu de bouteille. Mais Mme de Crécy voilà une petite femme
qui a l’air intelligente, ah! saperlipopette, on voit tout de suite
qu’elle a l’œil américain, celle-là! Nous parlons de Mme de Crécy,
dit-il à M. Verdurin qui s’approchait, la pipe à la bouche. Je me
figure que comme corps de femme...»"
 :tokens 81
 :processed-at "2025-03-16T02:18:14.474064"
 :entities (list
  (entity :text "--«Elle" :label "ORG" :start 0 :end 7) (entity :text "Verdurin," :label "ORG" :start 33 :end 42) (entity :text "Évidemment" :label "ORG" :start 114 :end 124) (entity :text "Mais" :label "ORG" :start 168 :end 172) (entity :text "Crécy" :label "ORG" :start 180 :end 185) (entity :text "Nous" :label "ORG" :start 314 :end 318) (entity :text "Crécy," :label "ORG" :start 337 :end 343) (entity :text "Verdurin" :label "ORG" :start 356 :end 364)
 )
 :sentences (list
  (sentence :text "--«Elle n’a pas dû être mal, Mme Verdurin, et puis c’est une femme avec
qui on peut causer, pour moi tout est là" :start 0 :end 112) (sentence :text "Évidemment elle commence à
avoir un peu de bouteille" :start 113 :end 166) (sentence :text "Mais Mme de Crécy voilà une petite femme
qui a l’air intelligente, ah! saperlipopette, on voit tout de suite
qu’elle a l’œil américain, celle-là! Nous parlons de Mme de Crécy,
dit-il à M" :start 167 :end 354) (sentence :text "Verdurin qui s’approchait, la pipe à la bouche" :start 355 :end 402) (sentence :text "Je me
figure que comme corps de femme" :start 403 :end 441) (sentence :text "»" :start 444 :end 445)
 ))