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
 :text "Mme Verdurin était assise sur un haut siège suédois en sapin ciré,
qu’un violoniste de ce pays lui avait donné et qu’elle conservait
quoiqu’il rappelât la forme d’un escabeau et jurât avec les beaux
meubles anciens qu’elle avait, mais elle tenait à garder en évidence
les cadeaux que les fidèles avaient l’habitude de lui faire de temps
en temps, afin que les donateurs eussent le plaisir de les reconnaître
quand ils venaient. Aussi tâchait-elle de persuader qu’on s’en tînt
aux fleurs et aux bonbons, qui du moins se détruisent; mais elle n’y
réussissait pas et c’était chez elle une collection de chauffe-pieds,
de coussins, de pendules, de paravents, de baromètres, de potiches,
dans une accumulation de redites et un disparate d’étrennes."
 :tokens 121
 :processed-at "2025-03-16T02:18:14.256424"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 4 :end 12)
 )
 :sentences (list
  (sentence :text "Mme Verdurin était assise sur un haut siège suédois en sapin ciré,
qu’un violoniste de ce pays lui avait donné et qu’elle conservait
quoiqu’il rappelât la forme d’un escabeau et jurât avec les beaux
meubles anciens qu’elle avait, mais elle tenait à garder en évidence
les cadeaux que les fidèles avaient l’habitude de lui faire de temps
en temps, afin que les donateurs eussent le plaisir de les reconnaître
quand ils venaient" :start 0 :end 426) (sentence :text "Aussi tâchait-elle de persuader qu’on s’en tînt
aux fleurs et aux bonbons, qui du moins se détruisent; mais elle n’y
réussissait pas et c’était chez elle une collection de chauffe-pieds,
de coussins, de pendules, de paravents, de baromètres, de potiches,
dans une accumulation de redites et un disparate d’étrennes" :start 427 :end 742)
 ))