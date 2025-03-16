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
 :text "Et ma pensée n’était-elle pas aussi comme une autre crèche au fond de
laquelle je sentais que je restais enfoncé, même pour regarder ce qui
se passait au dehors? Quand je voyais un objet extérieur, la
conscience que je le voyais restait entre moi et lui, le bordait d’un
mince liseré spirituel qui m’empêchait de jamais toucher directement
sa matière; elle se volatilisait en quelque sorte avant que je prisse
contact avec elle, comme un corps incandescent qu’on approche d’un
objet mouillé ne touche pas son humidité parce qu’il se fait toujours
précéder d’une zone d’évaporation. Dans l’espèce d’écran diapré
d’états différents que, tandis que je lisais, déployait simultanément
ma conscience, et qui allaient des aspirations les plus profondément
cachées en moi-même jusqu’à la vision tout extérieure de l’horizon que
j’avais, au bout du jardin, sous les yeux, ce qu’il y avait d’abord en
moi, de plus intime, la poignée sans cesse en mouvement qui gouvernait
le reste, c’était ma croyance en la richesse philosophique, en la
beauté du livre que je lisais, et mon désir de me les approprier, quel
que fût ce livre. Car, même si je l’avais acheté à Combray, en
l’apercevant devant l’épicerie Borange, trop distante de la maison
pour que Françoise pût s’y fournir comme chez Camus, mais mieux
achalandée comme papeterie et librairie, retenu par des ficelles dans
la mosaïque des brochures et des livraisons qui revêtaient les deux
vantaux de sa porte plus mystérieuse, plus semée de pensées qu’une
porte de cathédrale, c’est que je l’avais reconnu pour m’avoir été
cité comme un ouvrage remarquable par le professeur ou le camarade qui
me paraissait à cette époque détenir le secret de la vérité et de la
beauté à demi pressenties, à demi incompréhensibles, dont la
connaissance était le but vague mais permanent de ma pensée."
 :tokens 302
 :processed-at "2025-03-16T02:18:13.947164"
 :entities (list
  (entity :text "Quand" :label "ORG" :start 162 :end 167) (entity :text "Dans" :label "ORG" :start 582 :end 586) (entity :text "Car," :label "ORG" :start 1118 :end 1122) (entity :text "Combray," :label "ORG" :start 1151 :end 1159) (entity :text "Borange," :label "ORG" :start 1194 :end 1202) (entity :text "Françoise" :label "ORG" :start 1239 :end 1248) (entity :text "Camus," :label "ORG" :start 1276 :end 1282)
 )
 :sentences (list
  (sentence :text "Et ma pensée n’était-elle pas aussi comme une autre crèche au fond de
laquelle je sentais que je restais enfoncé, même pour regarder ce qui
se passait au dehors? Quand je voyais un objet extérieur, la
conscience que je le voyais restait entre moi et lui, le bordait d’un
mince liseré spirituel qui m’empêchait de jamais toucher directement
sa matière; elle se volatilisait en quelque sorte avant que je prisse
contact avec elle, comme un corps incandescent qu’on approche d’un
objet mouillé ne touche pas son humidité parce qu’il se fait toujours
précéder d’une zone d’évaporation" :start 0 :end 580) (sentence :text "Dans l’espèce d’écran diapré
d’états différents que, tandis que je lisais, déployait simultanément
ma conscience, et qui allaient des aspirations les plus profondément
cachées en moi-même jusqu’à la vision tout extérieure de l’horizon que
j’avais, au bout du jardin, sous les yeux, ce qu’il y avait d’abord en
moi, de plus intime, la poignée sans cesse en mouvement qui gouvernait
le reste, c’était ma croyance en la richesse philosophique, en la
beauté du livre que je lisais, et mon désir de me les approprier, quel
que fût ce livre" :start 581 :end 1116) (sentence :text "Car, même si je l’avais acheté à Combray, en
l’apercevant devant l’épicerie Borange, trop distante de la maison
pour que Françoise pût s’y fournir comme chez Camus, mais mieux
achalandée comme papeterie et librairie, retenu par des ficelles dans
la mosaïque des brochures et des livraisons qui revêtaient les deux
vantaux de sa porte plus mystérieuse, plus semée de pensées qu’une
porte de cathédrale, c’est que je l’avais reconnu pour m’avoir été
cité comme un ouvrage remarquable par le professeur ou le camarade qui
me paraissait à cette époque détenir le secret de la vérité et de la
beauté à demi pressenties, à demi incompréhensibles, dont la
connaissance était le but vague mais permanent de ma pensée" :start 1117 :end 1826)
 ))