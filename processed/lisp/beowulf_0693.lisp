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
 :text "Il se disait que le charme du printemps qu’il ne pouvait pas aller
goûter à Combray, il le trouverait du moins dans l’île des Cygnes ou à
Saint-Cloud. Mais comme il ne pouvait penser qu’à Odette, il ne savait
même pas, s’il avait senti l’odeur des feuilles, s’il y avait eu du
clair de lune. Il était accueilli par la petite phrase de la Sonate
jouée dans le jardin sur le piano du restaurant. S’il n’y en avait pas
là, les Verdurin prenaient une grande peine pour en faire descendre un
d’une chambre ou d’une salle à manger: ce n’est pas que Swann fût
rentré en faveur auprès d’eux, au contraire. Mais l’idée d’organiser
un plaisir ingénieux pour quelqu’un, même pour quelqu’un qu’ils
n’aimaient pas, développait chez eux, pendant les moments nécessaires
à ces préparatifs, des sentiments éphémères et occasionnels de
sympathie et de cordialité. Parfois il se disait que c’était un
nouveau soir de printemps de plus qui passait, il se contraignait à
faire attention aux arbres, au ciel. Mais l’agitation où le mettait la
présence d’Odette, et aussi un léger malaise fébrile qui ne le
quittait guère depuis quelque temps, le privait du calme et du
bien-être qui sont le fond indispensable aux impressions que peut
donner la nature."
 :tokens 211
 :processed-at "2025-03-16T02:18:14.518930"
 :entities (list
  (entity :text "Combray," :label "ORG" :start 76 :end 84) (entity :text "Cygnes" :label "ORG" :start 126 :end 132) (entity :text "Saint-Cloud." :label "ORG" :start 138 :end 150) (entity :text "Mais" :label "ORG" :start 151 :end 155) (entity :text "Odette," :label "ORG" :start 188 :end 195) (entity :text "Sonate" :label "ORG" :start 338 :end 344) (entity :text "Verdurin" :label "ORG" :start 424 :end 432) (entity :text "Swann" :label "ORG" :start 543 :end 548) (entity :text "Mais" :label "ORG" :start 598 :end 602) (entity :text "Parfois" :label "ORG" :start 847 :end 854) (entity :text "Mais" :label "ORG" :start 988 :end 992)
 )
 :sentences (list
  (sentence :text "Il se disait que le charme du printemps qu’il ne pouvait pas aller
goûter à Combray, il le trouverait du moins dans l’île des Cygnes ou à
Saint-Cloud" :start 0 :end 149) (sentence :text "Mais comme il ne pouvait penser qu’à Odette, il ne savait
même pas, s’il avait senti l’odeur des feuilles, s’il y avait eu du
clair de lune" :start 150 :end 290) (sentence :text "Il était accueilli par la petite phrase de la Sonate
jouée dans le jardin sur le piano du restaurant" :start 291 :end 392) (sentence :text "S’il n’y en avait pas
là, les Verdurin prenaient une grande peine pour en faire descendre un
d’une chambre ou d’une salle à manger: ce n’est pas que Swann fût
rentré en faveur auprès d’eux, au contraire" :start 393 :end 596) (sentence :text "Mais l’idée d’organiser
un plaisir ingénieux pour quelqu’un, même pour quelqu’un qu’ils
n’aimaient pas, développait chez eux, pendant les moments nécessaires
à ces préparatifs, des sentiments éphémères et occasionnels de
sympathie et de cordialité" :start 597 :end 845) (sentence :text "Parfois il se disait que c’était un
nouveau soir de printemps de plus qui passait, il se contraignait à
faire attention aux arbres, au ciel" :start 846 :end 986) (sentence :text "Mais l’agitation où le mettait la
présence d’Odette, et aussi un léger malaise fébrile qui ne le
quittait guère depuis quelque temps, le privait du calme et du
bien-être qui sont le fond indispensable aux impressions que peut
donner la nature" :start 987 :end 1230)
 ))