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
 :text "Il avait précisément demandé la veille à mes parents de m’envoyer
dîner ce soir-là avec lui: «Venez tenir compagnie à votre vieil ami,
m’avait-il dit. Comme le bouquet qu’un voyageur nous envoie d’un pays
où nous ne retournerons plus, faites-moi respirer du lointain de votre
adolescence ces fleurs des printemps que j’ai traversés moi aussi il y
a bien des années. Venez avec la primevère, la barbe de chanoine, le
bassin d’or, venez avec le sédum dont est fait le bouquet de dilection
de la flore balzacienne, avec la fleur du jour de la Résurrection, la
pâquerette et la boule de neige des jardins qui commence à embaumer
dans les allées de votre grand’tante quand ne sont pas encore fondues
les dernières boules de neige des giboulées de Pâques. Venez avec la
glorieuse vêture de soie du lis digne de Salomon, et l’émail
polychrome des pensées, mais venez surtout avec la brise fraîche
encore des dernières gelées et qui va entr’ouvrir, pour les deux
papillons qui depuis ce matin attendent à la porte, la première rose
de Jérusalem.»"
 :tokens 178
 :processed-at "2025-03-16T02:18:14.078242"
 :entities (list
  (entity :text "«Venez" :label "ORG" :start 93 :end 99) (entity :text "Comme" :label "ORG" :start 151 :end 156) (entity :text "Venez" :label "ORG" :start 366 :end 371) (entity :text "Résurrection," :label "ORG" :start 540 :end 553) (entity :text "Pâques." :label "ORG" :start 742 :end 749) (entity :text "Venez" :label "ORG" :start 750 :end 755) (entity :text "Salomon," :label "ORG" :start 805 :end 813) (entity :text "Jérusalem.»" :label "ORG" :start 1027 :end 1038)
 )
 :sentences (list
  (sentence :text "Il avait précisément demandé la veille à mes parents de m’envoyer
dîner ce soir-là avec lui: «Venez tenir compagnie à votre vieil ami,
m’avait-il dit" :start 0 :end 149) (sentence :text "Comme le bouquet qu’un voyageur nous envoie d’un pays
où nous ne retournerons plus, faites-moi respirer du lointain de votre
adolescence ces fleurs des printemps que j’ai traversés moi aussi il y
a bien des années" :start 150 :end 364) (sentence :text "Venez avec la primevère, la barbe de chanoine, le
bassin d’or, venez avec le sédum dont est fait le bouquet de dilection
de la flore balzacienne, avec la fleur du jour de la Résurrection, la
pâquerette et la boule de neige des jardins qui commence à embaumer
dans les allées de votre grand’tante quand ne sont pas encore fondues
les dernières boules de neige des giboulées de Pâques" :start 365 :end 748) (sentence :text "Venez avec la
glorieuse vêture de soie du lis digne de Salomon, et l’émail
polychrome des pensées, mais venez surtout avec la brise fraîche
encore des dernières gelées et qui va entr’ouvrir, pour les deux
papillons qui depuis ce matin attendent à la porte, la première rose
de Jérusalem" :start 749 :end 1036) (sentence :text "»" :start 1037 :end 1038)
 ))