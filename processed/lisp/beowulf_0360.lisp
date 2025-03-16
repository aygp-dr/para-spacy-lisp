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
 :text "Mais plus loin le courant se ralentit, il traverse une propriété dont
l’accès était ouvert au public par celui à qui elle appartenait et qui
s’y était complu à des travaux d’horticulture aquatique, faisant
fleurir, dans les petits étangs que forme la Vivonne, de véritables
jardins de nymphéas. Comme les rives étaient à cet endroit très
boisées, les grandes ombres des arbres donnaient à l’eau un fond qui
était habituellement d’un vert sombre mais que parfois, quand nous
rentrions par certains soirs rassérénés d’après-midi orageux, j’ai vu
d’un bleu clair et cru, tirant sur le violet, d’apparence cloisonnée
et de goût japonais. Çà et là, à la surface, rougissait comme une
fraise une fleur de nymphéa au cœur écarlate, blanc sur les bords.
Plus loin, les fleurs plus nombreuses étaient plus pâles, moins
lisses, plus grenues, plus plissées, et disposées par le hasard en
enroulements si gracieux qu’on croyait voir flotter à la dérive, comme
après l’effeuillement mélancolique d’une fête galante, des roses
mousseuses en guirlandes dénouées. Ailleurs un coin semblait réservé
aux espèces communes qui montraient le blanc et rose proprets de la
julienne, lavés comme de la porcelaine avec un soin domestique, tandis
qu’un peu plus loin, pressées les unes contre les autres en une
véritable plate-bande flottante, on eût dit des pensées des jardins
qui étaient venues poser comme des papillons leur ailes bleuâtres et
glacées, sur l’obliquité transparente de ce parterre d’eau; de ce
parterre céleste aussi: car il donnait aux fleurs un sol d’une couleur
plus précieuse, plus émouvante que la couleur des fleurs elles-mêmes;
et, soit que pendant l’après-midi il fît étinceler sous les nymphéas
le kaléidoscope d’un bonheur attentif, silencieux et mobile, ou qu’il
s’emplît vers le soir, comme quelque port lointain, du rose et de la
rêverie du couchant, changeant sans cesse pour rester toujours en
accord, autour des corolles de teintes plus fixes, avec ce qu’il y a
de plus profond, de plus fugitif, de plus mystérieux,--avec ce qu’il y
a d’infini,--dans l’heure, il semblait les avoir fait fleurir en plein
ciel."
 :tokens 341
 :processed-at "2025-03-16T02:18:14.174671"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Vivonne," :label "ORG" :start 251 :end 259) (entity :text "Comme" :label "ORG" :start 295 :end 300) (entity :text "Plus" :label "ORG" :start 746 :end 750)
 )
 :sentences (list
  (sentence :text "Mais plus loin le courant se ralentit, il traverse une propriété dont
l’accès était ouvert au public par celui à qui elle appartenait et qui
s’y était complu à des travaux d’horticulture aquatique, faisant
fleurir, dans les petits étangs que forme la Vivonne, de véritables
jardins de nymphéas" :start 0 :end 293) (sentence :text "Comme les rives étaient à cet endroit très
boisées, les grandes ombres des arbres donnaient à l’eau un fond qui
était habituellement d’un vert sombre mais que parfois, quand nous
rentrions par certains soirs rassérénés d’après-midi orageux, j’ai vu
d’un bleu clair et cru, tirant sur le violet, d’apparence cloisonnée
et de goût japonais" :start 294 :end 632) (sentence :text "Çà et là, à la surface, rougissait comme une
fraise une fleur de nymphéa au cœur écarlate, blanc sur les bords" :start 633 :end 744) (sentence :text "Plus loin, les fleurs plus nombreuses étaient plus pâles, moins
lisses, plus grenues, plus plissées, et disposées par le hasard en
enroulements si gracieux qu’on croyait voir flotter à la dérive, comme
après l’effeuillement mélancolique d’une fête galante, des roses
mousseuses en guirlandes dénouées" :start 745 :end 1046) (sentence :text "Ailleurs un coin semblait réservé
aux espèces communes qui montraient le blanc et rose proprets de la
julienne, lavés comme de la porcelaine avec un soin domestique, tandis
qu’un peu plus loin, pressées les unes contre les autres en une
véritable plate-bande flottante, on eût dit des pensées des jardins
qui étaient venues poser comme des papillons leur ailes bleuâtres et
glacées, sur l’obliquité transparente de ce parterre d’eau; de ce
parterre céleste aussi: car il donnait aux fleurs un sol d’une couleur
plus précieuse, plus émouvante que la couleur des fleurs elles-mêmes;
et, soit que pendant l’après-midi il fît étinceler sous les nymphéas
le kaléidoscope d’un bonheur attentif, silencieux et mobile, ou qu’il
s’emplît vers le soir, comme quelque port lointain, du rose et de la
rêverie du couchant, changeant sans cesse pour rester toujours en
accord, autour des corolles de teintes plus fixes, avec ce qu’il y a
de plus profond, de plus fugitif, de plus mystérieux,--avec ce qu’il y
a d’infini,--dans l’heure, il semblait les avoir fait fleurir en plein
ciel" :start 1047 :end 2118)
 ))