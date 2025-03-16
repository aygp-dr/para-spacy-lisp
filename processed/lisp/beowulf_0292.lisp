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
 :text "Mon père lui en reparla dans nos rencontres ultérieures, le tortura de
questions, ce fut peine inutile: comme cet escroc érudit qui employait
à fabriquer de faux palimpsestes un labeur et une science dont la
centième partie eût suffi à lui assurer une situation plus lucrative,
mais honorable, M. Legrandin, si nous avions insisté encore, aurait
fini par édifier toute une éthique de paysage et une géographie
céleste de la basse Normandie, plutôt que de nous avouer qu’à deux
kilomètres de Balbec habitait sa propre sœur, et d’être obligé à nous
offrir une lettre d’introduction qui n’eût pas été pour lui un tel
sujet d’effroi s’il avait été absolument certain,--comme il aurait dû
l’être en effet avec l’expérience qu’il avait du caractère de ma
grand’mère--que nous n’en aurions pas profité."
 :tokens 130
 :processed-at "2025-03-16T02:18:14.093923"
 :entities (list
  (entity :text "Legrandin," :label "ORG" :start 297 :end 307) (entity :text "Normandie," :label "ORG" :start 430 :end 440) (entity :text "Balbec" :label "ORG" :start 491 :end 497)
 )
 :sentences (list
  (sentence :text "Mon père lui en reparla dans nos rencontres ultérieures, le tortura de
questions, ce fut peine inutile: comme cet escroc érudit qui employait
à fabriquer de faux palimpsestes un labeur et une science dont la
centième partie eût suffi à lui assurer une situation plus lucrative,
mais honorable, M" :start 0 :end 295) (sentence :text "Legrandin, si nous avions insisté encore, aurait
fini par édifier toute une éthique de paysage et une géographie
céleste de la basse Normandie, plutôt que de nous avouer qu’à deux
kilomètres de Balbec habitait sa propre sœur, et d’être obligé à nous
offrir une lettre d’introduction qui n’eût pas été pour lui un tel
sujet d’effroi s’il avait été absolument certain,--comme il aurait dû
l’être en effet avec l’expérience qu’il avait du caractère de ma
grand’mère--que nous n’en aurions pas profité" :start 296 :end 794)
 ))