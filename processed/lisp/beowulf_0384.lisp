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
 :text "Les Verdurin n’invitaient pas à dîner: on avait chez eux «son couvert
mis». Pour la soirée, il n’y avait pas de programme. Le jeune pianiste
jouait, mais seulement si «ça lui chantait», car on ne forçait
personne et comme disait M. Verdurin: «Tout pour les amis, vivent les
camarades!» Si le pianiste voulait jouer la chevauchée de la Walkyrie
ou le prélude de Tristan, Mme Verdurin protestait, non que cette
musique lui déplût, mais au contraire parce qu’elle lui causait trop
d’impression. «Alors vous tenez à ce que j’aie ma migraine? Vous savez
bien que c’est la même chose chaque fois qu’il joue ça. Je sais ce qui
m’attend! Demain quand je voudrai me lever, bonsoir, plus personne!»
S’il ne jouait pas, on causait, et l’un des amis, le plus souvent leur
peintre favori d’alors, «lâchait», comme disait M. Verdurin, «une
grosse faribole qui faisait s’esclaffer tout le monde», Mme Verdurin
surtout, à qui,--tant elle avait l’habitude de prendre au propre les
expressions figurées des émotions qu’elle éprouvait,--le docteur
Cottard (un jeune débutant à cette époque) dut un jour remettre sa
mâchoire qu’elle avait décrochée pour avoir trop ri."
 :tokens 189
 :processed-at "2025-03-16T02:18:14.204635"
 :entities (list
  (entity :text "Verdurin" :label "ORG" :start 4 :end 12) (entity :text "Pour" :label "ORG" :start 76 :end 80) (entity :text "Verdurin:" :label "ORG" :start 232 :end 241) (entity :text "«Tout" :label "ORG" :start 242 :end 247) (entity :text "Walkyrie" :label "ORG" :start 335 :end 343) (entity :text "Tristan," :label "ORG" :start 361 :end 369) (entity :text "Verdurin" :label "ORG" :start 374 :end 382) (entity :text "«Alors" :label "ORG" :start 492 :end 498) (entity :text "Vous" :label "ORG" :start 538 :end 542) (entity :text "Demain" :label "ORG" :start 630 :end 636) (entity :text "Verdurin," :label "ORG" :start 811 :end 820) (entity :text "Verdurin" :label "ORG" :start 886 :end 894) (entity :text "Cottard" :label "ORG" :start 1029 :end 1036)
 )
 :sentences (list
  (sentence :text "Les Verdurin n’invitaient pas à dîner: on avait chez eux «son couvert
mis»" :start 0 :end 74) (sentence :text "Pour la soirée, il n’y avait pas de programme" :start 75 :end 121) (sentence :text "Le jeune pianiste
jouait, mais seulement si «ça lui chantait», car on ne forçait
personne et comme disait M" :start 122 :end 230) (sentence :text "Verdurin: «Tout pour les amis, vivent les
camarades!» Si le pianiste voulait jouer la chevauchée de la Walkyrie
ou le prélude de Tristan, Mme Verdurin protestait, non que cette
musique lui déplût, mais au contraire parce qu’elle lui causait trop
d’impression" :start 231 :end 490) (sentence :text "«Alors vous tenez à ce que j’aie ma migraine? Vous savez
bien que c’est la même chose chaque fois qu’il joue ça" :start 491 :end 603) (sentence :text "Je sais ce qui
m’attend! Demain quand je voudrai me lever, bonsoir, plus personne!»
S’il ne jouait pas, on causait, et l’un des amis, le plus souvent leur
peintre favori d’alors, «lâchait», comme disait M" :start 604 :end 809) (sentence :text "Verdurin, «une
grosse faribole qui faisait s’esclaffer tout le monde», Mme Verdurin
surtout, à qui,--tant elle avait l’habitude de prendre au propre les
expressions figurées des émotions qu’elle éprouvait,--le docteur
Cottard (un jeune débutant à cette époque) dut un jour remettre sa
mâchoire qu’elle avait décrochée pour avoir trop ri" :start 810 :end 1147)
 ))