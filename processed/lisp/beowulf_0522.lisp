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
 :text "Rien qu’en approchant de chez les Verdurin quand il apercevait,
éclairées par des lampes, les grandes fenêtres dont on ne fermait
jamais les volets, il s’attendrissait en pensant à l’être charmant
qu’il allait voir épanoui dans leur lumière d’or. Parfois les ombres
des invités se détachaient minces et noires, en écran, devant les
lampes, comme ces petites gravures qu’on intercale de place en place
dans un abat-jour translucide dont les autres feuillets ne sont que
clarté. Il cherchait à distinguer la silhouette d’Odette. Puis, dès
qu’il était arrivé, sans qu’il s’en rendit compte, ses yeux brillaient
d’une telle joie que M. Verdurin disait au peintre: «Je crois que ça
chauffe.» Et la présence d’Odette ajoutait en effet pour Swann à cette
maison ce dont n’était pourvue aucune de celles où il était reçu: une
sorte d’appareil sensitif, de réseau nerveux qui se ramifiait dans
toutes les pièces et apportait des excitations constantes à son cœur."
 :tokens 155
 :processed-at "2025-03-16T02:18:14.343290"
 :entities (list
  (entity :text "Rien" :label "ORG" :start 0 :end 4) (entity :text "Verdurin" :label "ORG" :start 34 :end 42) (entity :text "Parfois" :label "ORG" :start 247 :end 254) (entity :text "Puis," :label "ORG" :start 527 :end 532) (entity :text "Verdurin" :label "ORG" :start 632 :end 640) (entity :text "Swann" :label "ORG" :start 734 :end 739)
 )
 :sentences (list
  (sentence :text "Rien qu’en approchant de chez les Verdurin quand il apercevait,
éclairées par des lampes, les grandes fenêtres dont on ne fermait
jamais les volets, il s’attendrissait en pensant à l’être charmant
qu’il allait voir épanoui dans leur lumière d’or" :start 0 :end 245) (sentence :text "Parfois les ombres
des invités se détachaient minces et noires, en écran, devant les
lampes, comme ces petites gravures qu’on intercale de place en place
dans un abat-jour translucide dont les autres feuillets ne sont que
clarté" :start 246 :end 475) (sentence :text "Il cherchait à distinguer la silhouette d’Odette" :start 476 :end 525) (sentence :text "Puis, dès
qu’il était arrivé, sans qu’il s’en rendit compte, ses yeux brillaient
d’une telle joie que M" :start 526 :end 630) (sentence :text "Verdurin disait au peintre: «Je crois que ça
chauffe" :start 631 :end 684) (sentence :text "» Et la présence d’Odette ajoutait en effet pour Swann à cette
maison ce dont n’était pourvue aucune de celles où il était reçu: une
sorte d’appareil sensitif, de réseau nerveux qui se ramifiait dans
toutes les pièces et apportait des excitations constantes à son cœur" :start 685 :end 953)
 ))