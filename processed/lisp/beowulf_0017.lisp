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
 :text "Ces évocations tournoyantes et confuses ne duraient jamais que
quelques secondes; souvent, ma brève incertitude du lieu où je me
trouvais ne distinguait pas mieux les unes des autres les diverses
suppositions dont elle était faite, que nous n’isolons, en voyant un
cheval courir, les positions successives que nous montre le
kinétoscope. Mais j’avais revu tantôt l’une, tantôt l’autre, des
chambres que j’avais habitées dans ma vie, et je finissais par me les
rappeler toutes dans les longues rêveries qui suivaient mon réveil;
chambres d’hiver où quand on est couché, on se blottit la tête dans un
nid qu’on se tresse avec les choses les plus disparates: un coin de
l’oreiller, le haut des couvertures, un bout de châle, le bord du lit,
et un numéro des Débats roses, qu’on finit par cimenter ensemble selon
la technique des oiseaux en s’y appuyant indéfiniment; où, par un
temps glacial le plaisir qu’on goûte est de se sentir séparé du dehors
(comme l’hirondelle de mer qui a son nid au fond d’un souterrain dans
la chaleur de la terre), et où, le feu étant entretenu toute la nuit
dans la cheminée, on dort dans un grand manteau d’air chaud et fumeux,
traversé des lueurs des tisons qui se rallument, sorte d’impalpable
alcôve, de chaude caverne creusée au sein de la chambre même, zone
ardente et mobile en ses contours thermiques, aérée de souffles qui
nous rafraîchissent la figure et viennent des angles, des parties
voisines de la fenêtre ou éloignées du foyer et qui se sont
refroidies;--chambres d’été où l’on aime être uni à la nuit tiède, où
le clair de lune appuyé aux volets entr’ouverts, jette jusqu’au pied
du lit son échelle enchantée, où on
dort presque en plein air, comme la mésange balancée par la brise à la
pointe d’un rayon--; parfois la chambre Louis XVI, si gaie que même le
premier soir je n’y avais pas été trop malheureux et où les
colonnettes qui soutenaient légèrement le plafond s’écartaient avec
tant de grâce pour montrer et réserver la place du lit; parfois au
contraire celle, petite et si élevée de plafond, creusée en forme de
pyramide dans la hauteur de deux étages et partiellement revêtue
d’acajou, où dès la première seconde j’avais été intoxiqué moralement
par l’odeur inconnue du vétiver, convaincu de l’hostilité des rideaux
violets et de l’insolente indifférence de la pendule qui jacassait
tout haut comme si je n’eusse pas été là;--où une étrange et
impitoyable glace à pieds quadrangulaires, barrant obliquement un des
angles de la pièce, se creusait à vif dans la douce plénitude de mon
champ visuel accoutumé un emplacement qui n’y était pas prévu;--où ma
pensée, s’efforçant pendant des heures de se disloquer, de s’étirer en
hauteur pour prendre exactement la forme de la chambre et arriver à
remplir jusqu’en haut son gigantesque entonnoir, avait souffert bien
de dures nuits, tandis que j’étais étendu dans mon lit, les yeux
levés, l’oreille anxieuse, la narine rétive, le cœur battant: jusqu’à
ce que l’habitude eût changé la couleur des rideaux, fait taire la
pendule, enseigné la pitié à la glace oblique et cruelle, dissimulé,
sinon chassé complètement, l’odeur du vétiver et notablement diminué
la hauteur apparente du plafond. L’habitude! aménageuse habile mais
bien lente et qui commence par laisser souffrir notre esprit pendant
des semaines dans une installation provisoire; mais que malgré tout il
est bien heureux de trouver, car sans l’habitude et réduit à ses seuls
moyens il serait impuissant à nous rendre un logis habitable."
 :tokens 582
 :processed-at "2025-03-16T02:18:13.786200"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 338 :end 342) (entity :text "Débats" :label "ORG" :start 755 :end 761) (entity :text "Louis" :label "ORG" :start 1771 :end 1776)
 )
 :sentences (list
  (sentence :text "Ces évocations tournoyantes et confuses ne duraient jamais que
quelques secondes; souvent, ma brève incertitude du lieu où je me
trouvais ne distinguait pas mieux les unes des autres les diverses
suppositions dont elle était faite, que nous n’isolons, en voyant un
cheval courir, les positions successives que nous montre le
kinétoscope" :start 0 :end 336) (sentence :text "Mais j’avais revu tantôt l’une, tantôt l’autre, des
chambres que j’avais habitées dans ma vie, et je finissais par me les
rappeler toutes dans les longues rêveries qui suivaient mon réveil;
chambres d’hiver où quand on est couché, on se blottit la tête dans un
nid qu’on se tresse avec les choses les plus disparates: un coin de
l’oreiller, le haut des couvertures, un bout de châle, le bord du lit,
et un numéro des Débats roses, qu’on finit par cimenter ensemble selon
la technique des oiseaux en s’y appuyant indéfiniment; où, par un
temps glacial le plaisir qu’on goûte est de se sentir séparé du dehors
(comme l’hirondelle de mer qui a son nid au fond d’un souterrain dans
la chaleur de la terre), et où, le feu étant entretenu toute la nuit
dans la cheminée, on dort dans un grand manteau d’air chaud et fumeux,
traversé des lueurs des tisons qui se rallument, sorte d’impalpable
alcôve, de chaude caverne creusée au sein de la chambre même, zone
ardente et mobile en ses contours thermiques, aérée de souffles qui
nous rafraîchissent la figure et viennent des angles, des parties
voisines de la fenêtre ou éloignées du foyer et qui se sont
refroidies;--chambres d’été où l’on aime être uni à la nuit tiède, où
le clair de lune appuyé aux volets entr’ouverts, jette jusqu’au pied
du lit son échelle enchantée, où on
dort presque en plein air, comme la mésange balancée par la brise à la
pointe d’un rayon--; parfois la chambre Louis XVI, si gaie que même le
premier soir je n’y avais pas été trop malheureux et où les
colonnettes qui soutenaient légèrement le plafond s’écartaient avec
tant de grâce pour montrer et réserver la place du lit; parfois au
contraire celle, petite et si élevée de plafond, creusée en forme de
pyramide dans la hauteur de deux étages et partiellement revêtue
d’acajou, où dès la première seconde j’avais été intoxiqué moralement
par l’odeur inconnue du vétiver, convaincu de l’hostilité des rideaux
violets et de l’insolente indifférence de la pendule qui jacassait
tout haut comme si je n’eusse pas été là;--où une étrange et
impitoyable glace à pieds quadrangulaires, barrant obliquement un des
angles de la pièce, se creusait à vif dans la douce plénitude de mon
champ visuel accoutumé un emplacement qui n’y était pas prévu;--où ma
pensée, s’efforçant pendant des heures de se disloquer, de s’étirer en
hauteur pour prendre exactement la forme de la chambre et arriver à
remplir jusqu’en haut son gigantesque entonnoir, avait souffert bien
de dures nuits, tandis que j’étais étendu dans mon lit, les yeux
levés, l’oreille anxieuse, la narine rétive, le cœur battant: jusqu’à
ce que l’habitude eût changé la couleur des rideaux, fait taire la
pendule, enseigné la pitié à la glace oblique et cruelle, dissimulé,
sinon chassé complètement, l’odeur du vétiver et notablement diminué
la hauteur apparente du plafond" :start 337 :end 3187) (sentence :text "L’habitude! aménageuse habile mais
bien lente et qui commence par laisser souffrir notre esprit pendant
des semaines dans une installation provisoire; mais que malgré tout il
est bien heureux de trouver, car sans l’habitude et réduit à ses seuls
moyens il serait impuissant à nous rendre un logis habitable" :start 3188 :end 3495)
 ))