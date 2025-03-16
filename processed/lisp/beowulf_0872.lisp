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
 :text "--Mais on dit toujours l’esprit des Guermantes, je n’ai jamais pu
comprendre pourquoi. Vous en connaissez donc d’autres qui en aient,
ajouta-t-elle dans un éclat de rire écumant et joyeux, les traits de
son visage concentrés, accouplés dans le réseau de son animation, les
yeux étincelants, enflammés d’un ensoleillement radieux de gaîté que
seuls avaient le pouvoir de faire rayonner ainsi les propos,
fussent-ils tenus par la princesse elle-même, qui étaient une louange
de son esprit ou de sa beauté. Tenez, voilà Swann qui a l’air de
saluer votre Cambremer; là... il est à côté de la mère Saint-Euverte,
vous ne voyez pas! Demandez-lui de vous présenter. Mais dépêchez-vous,
il cherche à s’en aller!"
 :tokens 114
 :processed-at "2025-03-16T02:18:14.706488"
 :entities (list
  (entity :text "--Mais" :label "ORG" :start 0 :end 6) (entity :text "Guermantes," :label "ORG" :start 36 :end 47) (entity :text "Vous" :label "ORG" :start 87 :end 91) (entity :text "Tenez," :label "ORG" :start 504 :end 510) (entity :text "Swann" :label "ORG" :start 517 :end 522) (entity :text "Cambremer;" :label "ORG" :start 551 :end 561) (entity :text "Saint-Euverte," :label "ORG" :start 593 :end 607) (entity :text "Mais" :label "ORG" :start 659 :end 663)
 )
 :sentences (list
  (sentence :text "--Mais on dit toujours l’esprit des Guermantes, je n’ai jamais pu
comprendre pourquoi" :start 0 :end 85) (sentence :text "Vous en connaissez donc d’autres qui en aient,
ajouta-t-elle dans un éclat de rire écumant et joyeux, les traits de
son visage concentrés, accouplés dans le réseau de son animation, les
yeux étincelants, enflammés d’un ensoleillement radieux de gaîté que
seuls avaient le pouvoir de faire rayonner ainsi les propos,
fussent-ils tenus par la princesse elle-même, qui étaient une louange
de son esprit ou de sa beauté" :start 86 :end 502) (sentence :text "Tenez, voilà Swann qui a l’air de
saluer votre Cambremer; là" :start 503 :end 564) (sentence :text "il est à côté de la mère Saint-Euverte,
vous ne voyez pas! Demandez-lui de vous présenter" :start 567 :end 657) (sentence :text "Mais dépêchez-vous,
il cherche à s’en aller!" :start 658 :end 703)
 ))