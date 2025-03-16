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
 :text "Et dès que j’eus reconnu le goût du morceau de madeleine trempé dans
le tilleul que me donnait ma tante (quoique je ne susse pas encore et
dusse remettre à bien plus tard de découvrir pourquoi ce souvenir me
rendait si heureux), aussitôt la vieille maison grise sur la rue, où
était sa chambre, vint comme un décor de théâtre s’appliquer au petit
pavillon, donnant sur le jardin, qu’on avait construit pour mes
parents sur ses derrières (ce pan tronqué que seul j’avais revu
jusque-là); et avec la maison, la ville, la Place où on m’envoyait
avant déjeuner, les rues où j’allais faire des courses depuis le matin
jusqu’au soir et par tous les temps, les chemins qu’on prenait si le
temps était beau. Et comme dans ce jeu où les Japonais s’amusent à
tremper dans un bol de porcelaine rempli d’eau, de petits morceaux de
papier jusque-là indistincts qui, à peine y sont-ils plongés
s’étirent, se contournent, se colorent, se différencient, deviennent
des fleurs, des maisons, des personnages consistants et
reconnaissables, de même maintenant toutes les fleurs de notre jardin
et celles du parc de M. Swann, et les nymphéas de la Vivonne, et les
bonnes gens du village et leurs petits logis et l’église et tout
Combray et ses environs, tout cela que prend forme et solidité, est
sorti, ville et jardins, de ma tasse de thé."
 :tokens 229
 :processed-at "2025-03-16T02:18:13.849995"
 :entities (list
  (entity :text "Place" :label "ORG" :start 519 :end 524) (entity :text "Japonais" :label "ORG" :start 728 :end 736) (entity :text "Swann," :label "ORG" :start 1099 :end 1105) (entity :text "Vivonne," :label "ORG" :start 1128 :end 1136) (entity :text "Combray" :label "ORG" :start 1209 :end 1216)
 )
 :sentences (list
  (sentence :text "Et dès que j’eus reconnu le goût du morceau de madeleine trempé dans
le tilleul que me donnait ma tante (quoique je ne susse pas encore et
dusse remettre à bien plus tard de découvrir pourquoi ce souvenir me
rendait si heureux), aussitôt la vieille maison grise sur la rue, où
était sa chambre, vint comme un décor de théâtre s’appliquer au petit
pavillon, donnant sur le jardin, qu’on avait construit pour mes
parents sur ses derrières (ce pan tronqué que seul j’avais revu
jusque-là); et avec la maison, la ville, la Place où on m’envoyait
avant déjeuner, les rues où j’allais faire des courses depuis le matin
jusqu’au soir et par tous les temps, les chemins qu’on prenait si le
temps était beau" :start 0 :end 698) (sentence :text "Et comme dans ce jeu où les Japonais s’amusent à
tremper dans un bol de porcelaine rempli d’eau, de petits morceaux de
papier jusque-là indistincts qui, à peine y sont-ils plongés
s’étirent, se contournent, se colorent, se différencient, deviennent
des fleurs, des maisons, des personnages consistants et
reconnaissables, de même maintenant toutes les fleurs de notre jardin
et celles du parc de M" :start 699 :end 1097) (sentence :text "Swann, et les nymphéas de la Vivonne, et les
bonnes gens du village et leurs petits logis et l’église et tout
Combray et ses environs, tout cela que prend forme et solidité, est
sorti, ville et jardins, de ma tasse de thé" :start 1098 :end 1320)
 ))