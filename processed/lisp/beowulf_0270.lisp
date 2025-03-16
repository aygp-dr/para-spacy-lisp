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
 :text "A cette heure où je descendais apprendre le menu, le dîner était déjà
commencé, et Françoise, commandant aux forces de la nature devenues
ses aides, comme dans les féeries où les géants se font engager comme
cuisiniers, frappait la houille, donnait à la vapeur des pommes de
terre à étuver et faisait finir à point par le feu les chefs-d’œuvre
culinaires d’abord préparés dans des récipients de céramiste qui
allaient des grandes cuves, marmites, chaudrons et poissonnières, aux
terrines pour le gibier, moules à pâtisserie, et petits pots de crème
en passant par une collection complète de casserole de toutes
dimensions. Je m’arrêtais à voir sur la table, où la fille de cuisine
venait de les écosser, les petits pois alignés et nombrés comme des
billes vertes dans un jeu; mais mon ravissement était devant les
asperges, trempées d’outremer et de rose et dont l’épi, finement
pignoché de mauve et d’azur, se dégrade insensiblement jusqu’au
pied,--encore souillé pourtant du sol de leur plant,--par des irisations
qui ne sont pas de la terre. Il me semblait que ces nuances célestes
trahissaient les délicieuses créatures qui s’étaient amusées à se
métamorphoser en légumes et qui, à travers le déguisement de leur
chair comestible et ferme, laissaient apercevoir en ces couleurs
naissantes d’aurore, en ces ébauches d’arc-en-ciel, en cette
extinction de soirs bleus, cette essence précieuse que je
reconnaissais encore quand, toute la nuit qui suivait un dîner où j’en
avais mangé, elles jouaient, dans leurs farces poétiques et grossières
comme une féerie de Shakespeare, à changer mon pot de chambre en un
vase de parfum."
 :tokens 263
 :processed-at "2025-03-16T02:18:14.068513"
 :entities (list
  (entity :text "Françoise," :label "ORG" :start 83 :end 93) (entity :text "Shakespeare," :label "ORG" :start 1563 :end 1575)
 )
 :sentences (list
  (sentence :text "A cette heure où je descendais apprendre le menu, le dîner était déjà
commencé, et Françoise, commandant aux forces de la nature devenues
ses aides, comme dans les féeries où les géants se font engager comme
cuisiniers, frappait la houille, donnait à la vapeur des pommes de
terre à étuver et faisait finir à point par le feu les chefs-d’œuvre
culinaires d’abord préparés dans des récipients de céramiste qui
allaient des grandes cuves, marmites, chaudrons et poissonnières, aux
terrines pour le gibier, moules à pâtisserie, et petits pots de crème
en passant par une collection complète de casserole de toutes
dimensions" :start 0 :end 621) (sentence :text "Je m’arrêtais à voir sur la table, où la fille de cuisine
venait de les écosser, les petits pois alignés et nombrés comme des
billes vertes dans un jeu; mais mon ravissement était devant les
asperges, trempées d’outremer et de rose et dont l’épi, finement
pignoché de mauve et d’azur, se dégrade insensiblement jusqu’au
pied,--encore souillé pourtant du sol de leur plant,--par des irisations
qui ne sont pas de la terre" :start 622 :end 1043) (sentence :text "Il me semblait que ces nuances célestes
trahissaient les délicieuses créatures qui s’étaient amusées à se
métamorphoser en légumes et qui, à travers le déguisement de leur
chair comestible et ferme, laissaient apercevoir en ces couleurs
naissantes d’aurore, en ces ébauches d’arc-en-ciel, en cette
extinction de soirs bleus, cette essence précieuse que je
reconnaissais encore quand, toute la nuit qui suivait un dîner où j’en
avais mangé, elles jouaient, dans leurs farces poétiques et grossières
comme une féerie de Shakespeare, à changer mon pot de chambre en un
vase de parfum" :start 1044 :end 1625)
 ))