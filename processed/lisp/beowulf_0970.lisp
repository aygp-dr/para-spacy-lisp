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
 :text "Mais rien ne ressemblait moins non plus à ce Balbec réel que celui
dont j’avais souvent rêvé, les jours de tempête, quand le vent était
si fort que Françoise en me menant aux Champs-Élysées me recommandait
de ne pas marcher trop près des murs pour ne pas recevoir de tuiles
sur la tête et parlait en gémissant des grands sinistres et naufrages
annoncés par les journaux. Je n’avais pas de plus grand désir que de
voir une tempête sur la mer, moins comme un beau spectacle que comme
un moment dévoilé de la vie réelle de la nature; ou plutôt il n’y
avait pour moi de beaux spectacles que ceux que je savais qui
n’étaient pas artificiellement combinés pour mon plaisir, mais étaient
nécessaires, inchangeables,--les beautés des paysages ou du grand art.
Je n’étais curieux, je n’étais avide de connaître que ce que je
croyais plus vrai que moi-même, ce qui avait pour moi le prix de me
montrer un peu de la pensée d’un grand génie, ou de la force ou de la
grâce de la nature telle qu’elle se manifeste livrée à elle-même, sans
l’intervention des hommes. De même que le beau son de sa voix,
isolément reproduit par le phonographe, ne nous consolerait pas
d’avoir perdu notre mère, de même une tempête mécaniquement imitée
m’aurait laissé aussi indifférent que les fontaines lumineuses de
l’Exposition. Je voulais aussi pour que la tempête fût absolument
vraie, que le rivage lui-même fût un rivage naturel, non une digue
récemment créée par une municipalité. D’ailleurs la nature par tous
les sentiments qu’elle éveillait en moi, me semblait ce qu’il y avait
de plus opposé aux productions mécaniques des hommes. Moins elle
portait leur empreinte et plus elle offrait d’espace à l’expansion de
mon cœur. Or j’avais retenu le nom de Balbec que nous avait cité
Legrandin, comme d’une plage toute proche de «ces côtes funèbres,
fameuses par tant de naufrages qu’enveloppent six mois de l’année le
linceul des brumes et l’écume des vagues»."
 :tokens 332
 :processed-at "2025-03-16T02:18:14.822927"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Balbec" :label "ORG" :start 45 :end 51) (entity :text "Françoise" :label "ORG" :start 148 :end 157) (entity :text "Champs-Élysées" :label "ORG" :start 175 :end 189) (entity :text "Moins" :label "ORG" :start 1610 :end 1615) (entity :text "Balbec" :label "ORG" :start 1729 :end 1735) (entity :text "Legrandin," :label "ORG" :start 1756 :end 1766)
 )
 :sentences (list
  (sentence :text "Mais rien ne ressemblait moins non plus à ce Balbec réel que celui
dont j’avais souvent rêvé, les jours de tempête, quand le vent était
si fort que Françoise en me menant aux Champs-Élysées me recommandait
de ne pas marcher trop près des murs pour ne pas recevoir de tuiles
sur la tête et parlait en gémissant des grands sinistres et naufrages
annoncés par les journaux" :start 0 :end 369) (sentence :text "Je n’avais pas de plus grand désir que de
voir une tempête sur la mer, moins comme un beau spectacle que comme
un moment dévoilé de la vie réelle de la nature; ou plutôt il n’y
avait pour moi de beaux spectacles que ceux que je savais qui
n’étaient pas artificiellement combinés pour mon plaisir, mais étaient
nécessaires, inchangeables,--les beautés des paysages ou du grand art" :start 370 :end 750) (sentence :text "Je n’étais curieux, je n’étais avide de connaître que ce que je
croyais plus vrai que moi-même, ce qui avait pour moi le prix de me
montrer un peu de la pensée d’un grand génie, ou de la force ou de la
grâce de la nature telle qu’elle se manifeste livrée à elle-même, sans
l’intervention des hommes" :start 751 :end 1050) (sentence :text "De même que le beau son de sa voix,
isolément reproduit par le phonographe, ne nous consolerait pas
d’avoir perdu notre mère, de même une tempête mécaniquement imitée
m’aurait laissé aussi indifférent que les fontaines lumineuses de
l’Exposition" :start 1051 :end 1297) (sentence :text "Je voulais aussi pour que la tempête fût absolument
vraie, que le rivage lui-même fût un rivage naturel, non une digue
récemment créée par une municipalité" :start 1298 :end 1454) (sentence :text "D’ailleurs la nature par tous
les sentiments qu’elle éveillait en moi, me semblait ce qu’il y avait
de plus opposé aux productions mécaniques des hommes" :start 1455 :end 1608) (sentence :text "Moins elle
portait leur empreinte et plus elle offrait d’espace à l’expansion de
mon cœur" :start 1609 :end 1699) (sentence :text "Or j’avais retenu le nom de Balbec que nous avait cité
Legrandin, comme d’une plage toute proche de «ces côtes funèbres,
fameuses par tant de naufrages qu’enveloppent six mois de l’année le
linceul des brumes et l’écume des vagues»" :start 1700 :end 1932)
 ))