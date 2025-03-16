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
 :text "Elle secoua la tête en fronçant la bouche, signe fréquemment employé
par les gens pour répondre qu’ils n’iront pas, que cela les ennuie a
quelqu’un qui leur a demandé: «Viendrez-vous voir passer la cavalcade,
assisterez-vous à la Revue?» Mais ce hochement de tête affecté ainsi
d’habitude à un événement à venir mêle à cause de cela de quelque
incertitude la dénégation d’un événement passé. De plus il n’évoque
que des raisons de convenance personnelle plutôt que la réprobation,
qu’une impossibilité morale. En voyant Odette lui faire ainsi le signe
que c’était faux, Swann comprit que c’était peut-être vrai."
 :tokens 98
 :processed-at "2025-03-16T02:18:14.769208"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 0 :end 4) (entity :text "Revue?»" :label "ORG" :start 230 :end 237) (entity :text "Mais" :label "ORG" :start 238 :end 242) (entity :text "Odette" :label "ORG" :start 520 :end 526) (entity :text "Swann" :label "ORG" :start 570 :end 575)
 )
 :sentences (list
  (sentence :text "Elle secoua la tête en fronçant la bouche, signe fréquemment employé
par les gens pour répondre qu’ils n’iront pas, que cela les ennuie a
quelqu’un qui leur a demandé: «Viendrez-vous voir passer la cavalcade,
assisterez-vous à la Revue?» Mais ce hochement de tête affecté ainsi
d’habitude à un événement à venir mêle à cause de cela de quelque
incertitude la dénégation d’un événement passé" :start 0 :end 390) (sentence :text "De plus il n’évoque
que des raisons de convenance personnelle plutôt que la réprobation,
qu’une impossibilité morale" :start 391 :end 508) (sentence :text "En voyant Odette lui faire ainsi le signe
que c’était faux, Swann comprit que c’était peut-être vrai" :start 509 :end 610)
 ))