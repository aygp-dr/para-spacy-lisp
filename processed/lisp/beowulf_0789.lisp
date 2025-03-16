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
 :text "Mais elle, de même qu’elle avait cru que son refus d’argent n’était
qu’une feinte, ne voyait qu’un prétexte dans le renseignement que
Swann venait lui demander, sur la voiture à repeindre, ou la valeur à
acheter. Car elle ne reconstituait pas les diverses phases de ces
crises qu’il traversait et dans l’idée qu’elle s’en faisait, elle
omettait d’en comprendre le mécanisme, ne croyant qu’à ce qu’elle
connaissait d’avance, à la nécessaire, à l’infaillible et toujours
identique terminaison. Idée incomplète,--d’autant plus profonde
peut-être--si on la jugeait du point de vue de Swann qui eût sans doute
trouvé qu’il était incompris d’Odette, comme un morphinomane ou un
tuberculeux, persuadés qu’ils ont été arrêtés, l’un par un événement
extérieur au moment où il allait se délivrer de son habitude
invétérée, l’autre par une indisposition accidentelle au moment où il
allait être enfin rétabli, se sentent incompris du médecin qui
n’attache pas la même importance qu’eux à ces prétendues contingences,
simples déguisements, selon lui, revêtus, pour redevenir sensibles à
ses malades, par le vice et l’état morbide qui, en réalité, n’ont pas
cessé de peser incurablement sur eux tandis qu’ils berçaient des rêves
de sagesse ou de guérison. Et de fait, l’amour de Swann en était
arrivé à ce degré où le médecin et, dans certaines affections, le
chirurgien le plus audacieux, se demandent si priver un malade de son
vice ou lui ôter son mal, est encore raisonnable ou même possible."
 :tokens 238
 :processed-at "2025-03-16T02:18:14.620709"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Swann" :label "ORG" :start 134 :end 139) (entity :text "Idée" :label "ORG" :start 492 :end 496) (entity :text "Swann" :label "ORG" :start 580 :end 585) (entity :text "Swann" :label "ORG" :start 1266 :end 1271)
 )
 :sentences (list
  (sentence :text "Mais elle, de même qu’elle avait cru que son refus d’argent n’était
qu’une feinte, ne voyait qu’un prétexte dans le renseignement que
Swann venait lui demander, sur la voiture à repeindre, ou la valeur à
acheter" :start 0 :end 211) (sentence :text "Car elle ne reconstituait pas les diverses phases de ces
crises qu’il traversait et dans l’idée qu’elle s’en faisait, elle
omettait d’en comprendre le mécanisme, ne croyant qu’à ce qu’elle
connaissait d’avance, à la nécessaire, à l’infaillible et toujours
identique terminaison" :start 212 :end 490) (sentence :text "Idée incomplète,--d’autant plus profonde
peut-être--si on la jugeait du point de vue de Swann qui eût sans doute
trouvé qu’il était incompris d’Odette, comme un morphinomane ou un
tuberculeux, persuadés qu’ils ont été arrêtés, l’un par un événement
extérieur au moment où il allait se délivrer de son habitude
invétérée, l’autre par une indisposition accidentelle au moment où il
allait être enfin rétabli, se sentent incompris du médecin qui
n’attache pas la même importance qu’eux à ces prétendues contingences,
simples déguisements, selon lui, revêtus, pour redevenir sensibles à
ses malades, par le vice et l’état morbide qui, en réalité, n’ont pas
cessé de peser incurablement sur eux tandis qu’ils berçaient des rêves
de sagesse ou de guérison" :start 491 :end 1241) (sentence :text "Et de fait, l’amour de Swann en était
arrivé à ce degré où le médecin et, dans certaines affections, le
chirurgien le plus audacieux, se demandent si priver un malade de son
vice ou lui ôter son mal, est encore raisonnable ou même possible" :start 1242 :end 1482)
 ))