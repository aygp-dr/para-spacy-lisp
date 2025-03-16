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
 :text "Combray de loin, à dix lieues à la ronde, vu du chemin de fer quand
nous y arrivions la dernière semaine avant Pâques, ce n’était qu’une
église résumant la ville, la représentant, parlant d’elle et pour elle
aux lointains, et, quand on approchait, tenant serrés autour de sa
haute mante sombre, en plein champ, contre le vent, comme une pastoure
ses brebis, les dos laineux et gris des maisons rassemblées qu’un
reste de remparts du moyen âge cernait çà et là d’un trait aussi
parfaitement circulaire qu’une petite ville dans un tableau de
primitif. A l’habiter, Combray était un peu triste, comme ses rues
dont les maisons construites en pierres noirâtres du pays, précédées
de degrés extérieurs, coiffées de pignons qui rabattaient l’ombre
devant elles, étaient assez obscures pour qu’il fallût dès que le jour
commençait à tomber relever les rideaux dans les «salles»; des rues
aux graves noms de saints (desquels plusieurs seigneurs de Combray):
rue Saint-Hilaire, rue Saint-Jacques où était la maison de ma tante,
rue Sainte-Hildegarde, où donnait la grille, et rue du Saint-Esprit
sur laquelle s’ouvrait la petite porte latérale de son jardin; et ces
rues de Combray existent dans une partie de ma mémoire si reculée,
peinte de couleurs si différentes de celles qui maintenant revêtent
pour moi le monde, qu’en vérité elles me paraissent toutes, et
l’église qui les dominait sur la Place, plus irréelles encore que les
projections de la lanterne magique; et qu’à certains moments, il me
semble que pouvoir encore traverser la rue Saint-Hilaire, pouvoir
louer une chambre rue de l’Oiseau--à la vieille hôtellerie de l’Oiseau
flesché, des soupiraux de laquelle montait une odeur de cuisine qui
s’élève encore par moments en moi aussi intermittente et aussi
chaude,--serait une entrée en contact avec l’Au-delà plus
merveilleusement surnaturelle que de faire la connaissance de Golo et
de causer avec Geneviève de Brabant."
 :tokens 310
 :processed-at "2025-03-16T02:18:13.851794"
 :entities (list
  (entity :text "Combray" :label "ORG" :start 0 :end 7) (entity :text "Pâques," :label "ORG" :start 111 :end 118) (entity :text "Combray" :label "ORG" :start 563 :end 570) (entity :text "Combray):" :label "ORG" :start 940 :end 949) (entity :text "Saint-Hilaire," :label "ORG" :start 954 :end 968) (entity :text "Saint-Jacques" :label "ORG" :start 973 :end 986) (entity :text "Sainte-Hildegarde," :label "ORG" :start 1023 :end 1041) (entity :text "Saint-Esprit" :label "ORG" :start 1074 :end 1086) (entity :text "Combray" :label "ORG" :start 1165 :end 1172) (entity :text "Place," :label "ORG" :start 1388 :end 1394) (entity :text "Saint-Hilaire," :label "ORG" :start 1536 :end 1550) (entity :text "Golo" :label "ORG" :start 1881 :end 1885) (entity :text "Geneviève" :label "ORG" :start 1904 :end 1913) (entity :text "Brabant." :label "ORG" :start 1917 :end 1925)
 )
 :sentences (list
  (sentence :text "Combray de loin, à dix lieues à la ronde, vu du chemin de fer quand
nous y arrivions la dernière semaine avant Pâques, ce n’était qu’une
église résumant la ville, la représentant, parlant d’elle et pour elle
aux lointains, et, quand on approchait, tenant serrés autour de sa
haute mante sombre, en plein champ, contre le vent, comme une pastoure
ses brebis, les dos laineux et gris des maisons rassemblées qu’un
reste de remparts du moyen âge cernait çà et là d’un trait aussi
parfaitement circulaire qu’une petite ville dans un tableau de
primitif" :start 0 :end 548) (sentence :text "A l’habiter, Combray était un peu triste, comme ses rues
dont les maisons construites en pierres noirâtres du pays, précédées
de degrés extérieurs, coiffées de pignons qui rabattaient l’ombre
devant elles, étaient assez obscures pour qu’il fallût dès que le jour
commençait à tomber relever les rideaux dans les «salles»; des rues
aux graves noms de saints (desquels plusieurs seigneurs de Combray):
rue Saint-Hilaire, rue Saint-Jacques où était la maison de ma tante,
rue Sainte-Hildegarde, où donnait la grille, et rue du Saint-Esprit
sur laquelle s’ouvrait la petite porte latérale de son jardin; et ces
rues de Combray existent dans une partie de ma mémoire si reculée,
peinte de couleurs si différentes de celles qui maintenant revêtent
pour moi le monde, qu’en vérité elles me paraissent toutes, et
l’église qui les dominait sur la Place, plus irréelles encore que les
projections de la lanterne magique; et qu’à certains moments, il me
semble que pouvoir encore traverser la rue Saint-Hilaire, pouvoir
louer une chambre rue de l’Oiseau--à la vieille hôtellerie de l’Oiseau
flesché, des soupiraux de laquelle montait une odeur de cuisine qui
s’élève encore par moments en moi aussi intermittente et aussi
chaude,--serait une entrée en contact avec l’Au-delà plus
merveilleusement surnaturelle que de faire la connaissance de Golo et
de causer avec Geneviève de Brabant" :start 549 :end 1924)
 ))