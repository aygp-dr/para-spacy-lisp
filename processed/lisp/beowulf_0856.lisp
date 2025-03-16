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
 :text "--Non, c’est une petite Mme de Cambremer, répondit étourdiment la
princesse et elle ajouta vivement: Je vous répète ce que j’ai entendu
dire, je n’ai aucune espèce de notion de qui c’est, on a dit derrière
moi que c’étaient des voisins de campagne de Mme de Saint-Euverte,
mais je ne crois pas que personne les connaisse. Ça doit être des
«gens de la campagne»! Du reste, je ne sais pas si vous êtes très
répandu dans la brillante société qui se trouve ici, mais je n’ai pas
idée du nom de toutes ces étonnantes personnes. A quoi pensez-vous
qu’ils passent leur vie en dehors des soirées de Mme de Saint-Euverte?
Elle a dû les faire venir avec les musiciens, les chaises et les
rafraîchissements. Avouez que ces «invités de chez Belloir» sont
magnifiques. Est-ce que vraiment elle a le courage de louer ces
figurants toutes les semaines. Ce n’est pas possible!"
 :tokens 151
 :processed-at "2025-03-16T02:18:14.692133"
 :entities (list
  (entity :text "--Non," :label "ORG" :start 0 :end 6) (entity :text "Cambremer," :label "ORG" :start 31 :end 41) (entity :text "Saint-Euverte," :label "ORG" :start 258 :end 272) (entity :text "Saint-Euverte?" :label "ORG" :start 598 :end 612) (entity :text "Elle" :label "ORG" :start 613 :end 617) (entity :text "Belloir»" :label "ORG" :start 729 :end 737)
 )
 :sentences (list
  (sentence :text "--Non, c’est une petite Mme de Cambremer, répondit étourdiment la
princesse et elle ajouta vivement: Je vous répète ce que j’ai entendu
dire, je n’ai aucune espèce de notion de qui c’est, on a dit derrière
moi que c’étaient des voisins de campagne de Mme de Saint-Euverte,
mais je ne crois pas que personne les connaisse" :start 0 :end 320) (sentence :text "Ça doit être des
«gens de la campagne»! Du reste, je ne sais pas si vous êtes très
répandu dans la brillante société qui se trouve ici, mais je n’ai pas
idée du nom de toutes ces étonnantes personnes" :start 321 :end 521) (sentence :text "A quoi pensez-vous
qu’ils passent leur vie en dehors des soirées de Mme de Saint-Euverte?
Elle a dû les faire venir avec les musiciens, les chaises et les
rafraîchissements" :start 522 :end 695) (sentence :text "Avouez que ces «invités de chez Belloir» sont
magnifiques" :start 696 :end 754) (sentence :text "Est-ce que vraiment elle a le courage de louer ces
figurants toutes les semaines" :start 755 :end 836) (sentence :text "Ce n’est pas possible!" :start 837 :end 860)
 ))