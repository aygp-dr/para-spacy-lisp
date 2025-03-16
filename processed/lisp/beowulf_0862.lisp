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
 :text "--«Ç’a été d’abord un nom de victoire, princesse, dit le général.
Qu’est-ce que vous voulez, pour un vieux briscard comme moi,
ajouta-t-il en ôtant son monocle pour l’essuyer, comme il aurait
changé un pansement, tandis que la princesse détournait
instinctivement les yeux, cette noblesse d’Empire, c’est autre chose
bien entendu, mais enfin, pour ce que c’est, c’est très beau dans son
genre, ce sont des gens qui en somme se sont battus en héros.»"
 :tokens 74
 :processed-at "2025-03-16T02:18:14.697423"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "--«Ç’a été d’abord un nom de victoire, princesse, dit le général" :start 0 :end 64) (sentence :text "Qu’est-ce que vous voulez, pour un vieux briscard comme moi,
ajouta-t-il en ôtant son monocle pour l’essuyer, comme il aurait
changé un pansement, tandis que la princesse détournait
instinctivement les yeux, cette noblesse d’Empire, c’est autre chose
bien entendu, mais enfin, pour ce que c’est, c’est très beau dans son
genre, ce sont des gens qui en somme se sont battus en héros" :start 65 :end 447) (sentence :text "»" :start 448 :end 449)
 ))