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
 :text "Quand je dis qu’en dehors d’événements très rares, comme cet
accouchement, le traintrain de ma tante ne subissait jamais aucune
variation, je ne parle pas de celles qui, se répétant toujours
identiques à des intervalles réguliers, n’introduisaient au sein de
l’uniformité qu’une sorte d’uniformité secondaire. C’est ainsi que
tous les samedis, comme Françoise allait dans l’après-midi au marché
de Roussainville-le-Pin, le déjeuner était, pour tout le monde, une
heure plus tôt. Et ma tante avait si bien pris l’habitude de cette
dérogation hebdomadaire à ses habitudes, qu’elle tenait à cette
habitude-là autant qu’aux autres. Elle y était si bien «routinée»,
comme disait Françoise, que s’il lui avait fallu un samedi, attendre
pour déjeuner l’heure habituelle, cela l’eût autant «dérangée» que si
elle avait dû, un autre jour, avancer son déjeuner à l’heure du
samedi. Cette avance du déjeuner donnait d’ailleurs au samedi, pour
nous tous, une figure particulière, indulgente, et assez sympathique.
Au moment où d’habitude on a encore une heure à vivre avant la détente
du repas, on savait que, dans quelques secondes, on allait voir
arriver des endives précoces, une omelette de faveur, un bifteck
immérité. Le retour de ce samedi asymétrique était un de ces petits
événements intérieurs, locaux, presque civiques qui, dans les vies
tranquilles et les sociétés fermées, créent une sorte de lien national
et deviennent le thème favori des conversations, des plaisanteries,
des récits exagérés à plaisir: il eût été le noyau tout prêt pour un
cycle légendaire si l’un de nous avait eu la tête épique. Dès le
matin, avant d’être habillés, sans raison, pour le plaisir d’éprouver
la force de la solidarité, on se disait les uns aux autres avec bonne
humeur, avec cordialité, avec patriotisme: «Il n’y a pas de temps à
perdre, n’oublions pas que c’est samedi!» cependant que ma tante,
conférant avec Françoise et songeant que la journée serait plus longue
que d’habitude, disait: «Si vous leur faisiez un beau morceau de veau,
comme c’est samedi.» Si à dix heures et demie un distrait tirait sa
montre en disant: «Allons, encore une heure et demie avant le
déjeuner», chacun était enchanté d’avoir à lui dire: «Mais voyons, à
quoi pensez-vous, vous oubliez que c’est samedi!»; on en riait encore
un quart d’heure après et on se promettait de monter raconter cet
oubli à ma tante pour l’amuser. Le visage du ciel même semblait
changé. Après le déjeuner, le soleil, conscient que c’était samedi,
flânait une heure de plus au haut du ciel, et quand quelqu’un, pensant
qu’on était en retard pour la promenade, disait: «Comment, seulement
deux heures?» en voyant passer les deux coups du clocher de
Saint-Hilaire (qui ont l’habitude de ne rencontrer encore personne
dans les chemins désertés à cause du repas de midi ou de la sieste, le
long de la rivière vive et blanche que le pêcheur même a abandonnée,
et passent solitaires dans le ciel vacant où ne restent que quelques
nuages paresseux), tout le monde en chœur lui répondait: «Mais ce qui
vous trompe, c’est qu’on a déjeuné une heure plus tôt, vous savez bien
que c’est samedi!» La surprise d’un barbare (nous appelions ainsi tous
les gens qui ne savaient pas ce qu’avait de particulier le samedi)
qui, étant venu à onze heures pour parler à mon père, nous avait
trouvés à table, était une des choses qui, dans sa vie, avaient le
plus égayé Françoise. Mais si elle trouvait amusant que le visiteur
interloqué ne sût pas que nous déjeunions plus tôt le samedi, elle
trouvait plus comique encore (tout en sympathisant du fond du cœur
avec ce chauvinisme étroit) que mon père, lui, n’eût pas eu l’idée que
ce barbare pouvait l’ignorer et eût répondu sans autre explication à
son étonnement de nous voir déjà dans la salle à manger: «Mais voyons,
c’est samedi!» Parvenue à ce point de son récit, elle essuyait des
larmes d’hilarité et pour accroître le plaisir qu’elle éprouvait, elle
prolongeait le dialogue, inventait ce qu’avait répondu le visiteur à
qui ce «samedi» n’expliquait rien. Et bien loin de nous plaindre de
ses additions, elles ne nous suffisaient pas encore et nous disions:
«Mais il me semblait qu’il avait dit aussi autre chose. C’était plus
long la première fois quand vous l’avez raconté.» Ma grand’tante
elle-même laissait son ouvrage, levait la tête et regardait par-dessus
son lorgnon."
 :tokens 721
 :processed-at "2025-03-16T02:18:14.048685"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 0 :end 5) (entity :text "Françoise" :label "ORG" :start 350 :end 359) (entity :text "Elle" :label "ORG" :start 628 :end 632) (entity :text "Françoise," :label "ORG" :start 674 :end 684) (entity :text "Cette" :label "ORG" :start 872 :end 877) (entity :text "Françoise" :label "ORG" :start 1899 :end 1908) (entity :text "«Allons," :label "ORG" :start 2112 :end 2120) (entity :text "«Mais" :label "ORG" :start 2209 :end 2214) (entity :text "«Comment," :label "ORG" :start 2613 :end 2622) (entity :text "Saint-Hilaire" :label "ORG" :start 2693 :end 2706) (entity :text "«Mais" :label "ORG" :start 3026 :end 3031) (entity :text "Françoise." :label "ORG" :start 3391 :end 3401) (entity :text "Mais" :label "ORG" :start 3402 :end 3406) (entity :text "«Mais" :label "ORG" :start 3779 :end 3784) (entity :text "Parvenue" :label "ORG" :start 3808 :end 3816) (entity :text "«Mais" :label "ORG" :start 4137 :end 4142)
 )
 :sentences (list
  (sentence :text "Quand je dis qu’en dehors d’événements très rares, comme cet
accouchement, le traintrain de ma tante ne subissait jamais aucune
variation, je ne parle pas de celles qui, se répétant toujours
identiques à des intervalles réguliers, n’introduisaient au sein de
l’uniformité qu’une sorte d’uniformité secondaire" :start 0 :end 308) (sentence :text "C’est ainsi que
tous les samedis, comme Françoise allait dans l’après-midi au marché
de Roussainville-le-Pin, le déjeuner était, pour tout le monde, une
heure plus tôt" :start 309 :end 477) (sentence :text "Et ma tante avait si bien pris l’habitude de cette
dérogation hebdomadaire à ses habitudes, qu’elle tenait à cette
habitude-là autant qu’aux autres" :start 478 :end 626) (sentence :text "Elle y était si bien «routinée»,
comme disait Françoise, que s’il lui avait fallu un samedi, attendre
pour déjeuner l’heure habituelle, cela l’eût autant «dérangée» que si
elle avait dû, un autre jour, avancer son déjeuner à l’heure du
samedi" :start 627 :end 870) (sentence :text "Cette avance du déjeuner donnait d’ailleurs au samedi, pour
nous tous, une figure particulière, indulgente, et assez sympathique" :start 871 :end 1000) (sentence :text "Au moment où d’habitude on a encore une heure à vivre avant la détente
du repas, on savait que, dans quelques secondes, on allait voir
arriver des endives précoces, une omelette de faveur, un bifteck
immérité" :start 1001 :end 1210) (sentence :text "Le retour de ce samedi asymétrique était un de ces petits
événements intérieurs, locaux, presque civiques qui, dans les vies
tranquilles et les sociétés fermées, créent une sorte de lien national
et deviennent le thème favori des conversations, des plaisanteries,
des récits exagérés à plaisir: il eût été le noyau tout prêt pour un
cycle légendaire si l’un de nous avait eu la tête épique" :start 1211 :end 1601) (sentence :text "Dès le
matin, avant d’être habillés, sans raison, pour le plaisir d’éprouver
la force de la solidarité, on se disait les uns aux autres avec bonne
humeur, avec cordialité, avec patriotisme: «Il n’y a pas de temps à
perdre, n’oublions pas que c’est samedi!» cependant que ma tante,
conférant avec Françoise et songeant que la journée serait plus longue
que d’habitude, disait: «Si vous leur faisiez un beau morceau de veau,
comme c’est samedi" :start 1602 :end 2044) (sentence :text "» Si à dix heures et demie un distrait tirait sa
montre en disant: «Allons, encore une heure et demie avant le
déjeuner», chacun était enchanté d’avoir à lui dire: «Mais voyons, à
quoi pensez-vous, vous oubliez que c’est samedi!»; on en riait encore
un quart d’heure après et on se promettait de monter raconter cet
oubli à ma tante pour l’amuser" :start 2045 :end 2391) (sentence :text "Le visage du ciel même semblait
changé" :start 2392 :end 2431) (sentence :text "Après le déjeuner, le soleil, conscient que c’était samedi,
flânait une heure de plus au haut du ciel, et quand quelqu’un, pensant
qu’on était en retard pour la promenade, disait: «Comment, seulement
deux heures?» en voyant passer les deux coups du clocher de
Saint-Hilaire (qui ont l’habitude de ne rencontrer encore personne
dans les chemins désertés à cause du repas de midi ou de la sieste, le
long de la rivière vive et blanche que le pêcheur même a abandonnée,
et passent solitaires dans le ciel vacant où ne restent que quelques
nuages paresseux), tout le monde en chœur lui répondait: «Mais ce qui
vous trompe, c’est qu’on a déjeuné une heure plus tôt, vous savez bien
que c’est samedi!» La surprise d’un barbare (nous appelions ainsi tous
les gens qui ne savaient pas ce qu’avait de particulier le samedi)
qui, étant venu à onze heures pour parler à mon père, nous avait
trouvés à table, était une des choses qui, dans sa vie, avaient le
plus égayé Françoise" :start 2432 :end 3400) (sentence :text "Mais si elle trouvait amusant que le visiteur
interloqué ne sût pas que nous déjeunions plus tôt le samedi, elle
trouvait plus comique encore (tout en sympathisant du fond du cœur
avec ce chauvinisme étroit) que mon père, lui, n’eût pas eu l’idée que
ce barbare pouvait l’ignorer et eût répondu sans autre explication à
son étonnement de nous voir déjà dans la salle à manger: «Mais voyons,
c’est samedi!» Parvenue à ce point de son récit, elle essuyait des
larmes d’hilarité et pour accroître le plaisir qu’elle éprouvait, elle
prolongeait le dialogue, inventait ce qu’avait répondu le visiteur à
qui ce «samedi» n’expliquait rien" :start 3401 :end 4033) (sentence :text "Et bien loin de nous plaindre de
ses additions, elles ne nous suffisaient pas encore et nous disions:
«Mais il me semblait qu’il avait dit aussi autre chose" :start 4034 :end 4191) (sentence :text "C’était plus
long la première fois quand vous l’avez raconté" :start 4192 :end 4253) (sentence :text "» Ma grand’tante
elle-même laissait son ouvrage, levait la tête et regardait par-dessus
son lorgnon" :start 4254 :end 4353)
 ))