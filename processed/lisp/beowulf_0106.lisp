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
 :text "On reconnaissait le clocher de Saint-Hilaire de bien loin, inscrivant
sa figure inoubliable à l’horizon où Combray n’apparaissait pas
encore; quand du train qui, la semaine de Pâques, nous amenait de
Paris, mon père l’apercevait qui filait tour à tour sur tous les
sillons du ciel, faisant courir en tous sens son petit coq de fer, il
nous disait: «Allons, prenez les couvertures, on est arrivé.» Et dans
une des plus grandes promenades que nous faisions de Combray, il y
avait un endroit où la route resserrée débouchait tout à coup sur un
immense plateau fermé à l’horizon par des forêts déchiquetées que
dépassait seul la fine pointe du clocher de Saint-Hilaire, mais si
mince, si rose, qu’elle semblait seulement rayée sur le ciel par un
ongle qui aurait voulu donner à se paysage, à ce tableau rien que de
nature, cette petite marque d’art, cette unique indication humaine.
Quand on se rapprochait et qu’on pouvait apercevoir le reste de la
tour carrée et à demi détruite qui, moins haute, subsistait à côté de
lui, on était frappé surtout de ton rougeâtre et sombre des pierres;
et, par un matin brumeux d’automne, on aurait dit, s’élevant au-dessus
du violet orageux des vignobles, une ruine de pourpre presque de la
couleur de la vigne vierge."
 :tokens 214
 :processed-at "2025-03-16T02:18:13.898470"
 :entities (list
  (entity :text "Saint-Hilaire" :label "ORG" :start 31 :end 44) (entity :text "Combray" :label "ORG" :start 107 :end 114) (entity :text "Pâques," :label "ORG" :start 176 :end 183) (entity :text "Paris," :label "ORG" :start 200 :end 206) (entity :text "«Allons," :label "ORG" :start 348 :end 356) (entity :text "Combray," :label "ORG" :start 458 :end 466) (entity :text "Saint-Hilaire," :label "ORG" :start 651 :end 665) (entity :text "Quand" :label "ORG" :start 879 :end 884)
 )
 :sentences (list
  (sentence :text "On reconnaissait le clocher de Saint-Hilaire de bien loin, inscrivant
sa figure inoubliable à l’horizon où Combray n’apparaissait pas
encore; quand du train qui, la semaine de Pâques, nous amenait de
Paris, mon père l’apercevait qui filait tour à tour sur tous les
sillons du ciel, faisant courir en tous sens son petit coq de fer, il
nous disait: «Allons, prenez les couvertures, on est arrivé" :start 0 :end 394) (sentence :text "» Et dans
une des plus grandes promenades que nous faisions de Combray, il y
avait un endroit où la route resserrée débouchait tout à coup sur un
immense plateau fermé à l’horizon par des forêts déchiquetées que
dépassait seul la fine pointe du clocher de Saint-Hilaire, mais si
mince, si rose, qu’elle semblait seulement rayée sur le ciel par un
ongle qui aurait voulu donner à se paysage, à ce tableau rien que de
nature, cette petite marque d’art, cette unique indication humaine" :start 395 :end 877) (sentence :text "Quand on se rapprochait et qu’on pouvait apercevoir le reste de la
tour carrée et à demi détruite qui, moins haute, subsistait à côté de
lui, on était frappé surtout de ton rougeâtre et sombre des pierres;
et, par un matin brumeux d’automne, on aurait dit, s’élevant au-dessus
du violet orageux des vignobles, une ruine de pourpre presque de la
couleur de la vigne vierge" :start 878 :end 1250)
 ))