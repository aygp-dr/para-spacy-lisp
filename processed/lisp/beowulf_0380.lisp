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
 :text "Certes quand approchait le matin, il y avait bien longtemps qu’était
dissipée la brève incertitude de mon réveil. Je savais dans quelle
chambre je me trouvais effectivement, je l’avais reconstruite autour
de moi dans l’obscurité, et,--soit en m’orientant par la seule mémoire,
soit en m’aidant, comme indication, d’une faible lueur aperçue, au
pied de laquelle je plaçais les rideaux de la croisée--, je l’avais
reconstruite tout entière et meublée comme un architecte et un
tapissier qui gardent leur ouverture primitive aux fenêtres et aux
portes, j’avais reposé les glaces et remis la commode à sa place
habituelle. Mais à peine le jour--et non plus le reflet d’une dernière
braise sur une tringle de cuivre que j’avais pris pour lui--traçait-il
dans l’obscurité, et comme à la craie, sa première raie blanche et
rectificative, que la fenêtre avec ses rideaux, quittait le cadre de
la porte où je l’avais située par erreur, tandis que pour lui faire
place, le bureau que ma mémoire avait maladroitement installé là se
sauvait à toute vitesse, poussant devant lui la cheminée et écartant
le mur mitoyen du couloir; une courette régnait à l’endroit où il y a
un instant encore s’étendait le cabinet de toilette, et la demeure que
j’avais rebâtie dans les ténèbres était allée rejoindre les demeures
entrevues dans le tourbillon du réveil, mise en fuite par ce pâle
signe qu’avait tracé au-dessus des rideaux le doigt levé du jour."
 :tokens 236
 :processed-at "2025-03-16T02:18:14.200708"
 :entities (list
  (entity :text "Certes" :label "ORG" :start 0 :end 6) (entity :text "Mais" :label "ORG" :start 619 :end 623)
 )
 :sentences (list
  (sentence :text "Certes quand approchait le matin, il y avait bien longtemps qu’était
dissipée la brève incertitude de mon réveil" :start 0 :end 112) (sentence :text "Je savais dans quelle
chambre je me trouvais effectivement, je l’avais reconstruite autour
de moi dans l’obscurité, et,--soit en m’orientant par la seule mémoire,
soit en m’aidant, comme indication, d’une faible lueur aperçue, au
pied de laquelle je plaçais les rideaux de la croisée--, je l’avais
reconstruite tout entière et meublée comme un architecte et un
tapissier qui gardent leur ouverture primitive aux fenêtres et aux
portes, j’avais reposé les glaces et remis la commode à sa place
habituelle" :start 113 :end 617) (sentence :text "Mais à peine le jour--et non plus le reflet d’une dernière
braise sur une tringle de cuivre que j’avais pris pour lui--traçait-il
dans l’obscurité, et comme à la craie, sa première raie blanche et
rectificative, que la fenêtre avec ses rideaux, quittait le cadre de
la porte où je l’avais située par erreur, tandis que pour lui faire
place, le bureau que ma mémoire avait maladroitement installé là se
sauvait à toute vitesse, poussant devant lui la cheminée et écartant
le mur mitoyen du couloir; une courette régnait à l’endroit où il y a
un instant encore s’étendait le cabinet de toilette, et la demeure que
j’avais rebâtie dans les ténèbres était allée rejoindre les demeures
entrevues dans le tourbillon du réveil, mise en fuite par ce pâle
signe qu’avait tracé au-dessus des rideaux le doigt levé du jour" :start 618 :end 1430)
 ))