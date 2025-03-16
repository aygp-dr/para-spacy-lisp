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
 :text "Ce n’était pas seulement parce qu’une image dont nous rêvons reste
toujours marquée, s’embellit et bénéficie du reflet des couleurs
étrangères qui par hasard l’entourent dans notre rêverie; car ces
paysages des livres que je lisais n’étaient pas pour moi que des
paysages plus vivement représentés à mon imagination que ceux que
Combray mettait sous mes yeux, mais qui eussent été analogues. Par le
choix qu’en avait fait l’auteur, par la foi avec laquelle ma pensée
allait au-devant de sa parole comme d’une révélation, ils me
semblaient être--impression que ne me donnait guère le pays où je me
trouvais, et surtout notre jardin, produit sans prestige de la
correcte fantaisie du jardinier que méprisait ma grand’mère--une part
véritable de la Nature elle-même, digne d’être étudiée et approfondie."
 :tokens 127
 :processed-at "2025-03-16T02:18:13.950471"
 :entities (list
  (entity :text "Combray" :label "ORG" :start 329 :end 336) (entity :text "Nature" :label "ORG" :start 746 :end 752)
 )
 :sentences (list
  (sentence :text "Ce n’était pas seulement parce qu’une image dont nous rêvons reste
toujours marquée, s’embellit et bénéficie du reflet des couleurs
étrangères qui par hasard l’entourent dans notre rêverie; car ces
paysages des livres que je lisais n’étaient pas pour moi que des
paysages plus vivement représentés à mon imagination que ceux que
Combray mettait sous mes yeux, mais qui eussent été analogues" :start 0 :end 390) (sentence :text "Par le
choix qu’en avait fait l’auteur, par la foi avec laquelle ma pensée
allait au-devant de sa parole comme d’une révélation, ils me
semblaient être--impression que ne me donnait guère le pays où je me
trouvais, et surtout notre jardin, produit sans prestige de la
correcte fantaisie du jardinier que méprisait ma grand’mère--une part
véritable de la Nature elle-même, digne d’être étudiée et approfondie" :start 391 :end 799)
 ))