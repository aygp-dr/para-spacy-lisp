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
 :text "J’éprouvais une petite déception, car cette jeune dame ne différait
pas des autres jolies femmes que j’avais vues quelquefois dans ma
famille notamment de la fille d’un de nos cousins chez lequel j’allais
tous les ans le premier janvier. Mieux habillée seulement, l’amie de
mon oncle avait le même regard vif et bon, elle avait l’air aussi
franc et aimant. Je ne lui trouvais rien de l’aspect théâtral que
j’admirais dans les photographies d’actrices, ni de l’expression
diabolique qui eût été en rapport avec la vie qu’elle devait mener.
J’avais peine à croire que ce fût une cocotte et surtout je n’aurais
pas cru que ce fût une cocotte chic si je n’avais pas vu la voiture à
deux chevaux, la robe rose, le collier de perles, si je n’avais pas su
que mon oncle n’en connaissait que de la plus haute volée. Mais je me
demandais comment le millionnaire qui lui donnait sa voiture et son
hôtel et ses bijoux pouvait avoir du plaisir à manger sa fortune pour
une personne qui avait l’air si simple et comme il faut. Et pourtant
en pensant à ce que devait être sa vie, l’immoralité m’en troublait
peut-être plus que si elle avait été concrétisée devant moi en une
apparence spéciale,--d’être ainsi invisible comme le secret de quelque
roman, de quelque scandale qui avait fait sortir de chez ses parents
bourgeois et voué à tout le monde, qui avait fait épanouir en beauté
et haussé jusqu’au demi-monde et à la notoriété celle que ses jeux de
physionomie, ses intonations de voix, pareils à tant d’autres que je
connaissais déjà, me faisaient malgré moi considérer comme une jeune
fille de bonne famille, qui n’était plus d’aucune famille."
 :tokens 284
 :processed-at "2025-03-16T02:18:13.930439"
 :entities (list
  (entity :text "Mieux" :label "ORG" :start 238 :end 243) (entity :text "Mais" :label "ORG" :start 808 :end 812)
 )
 :sentences (list
  (sentence :text "J’éprouvais une petite déception, car cette jeune dame ne différait
pas des autres jolies femmes que j’avais vues quelquefois dans ma
famille notamment de la fille d’un de nos cousins chez lequel j’allais
tous les ans le premier janvier" :start 0 :end 236) (sentence :text "Mieux habillée seulement, l’amie de
mon oncle avait le même regard vif et bon, elle avait l’air aussi
franc et aimant" :start 237 :end 355) (sentence :text "Je ne lui trouvais rien de l’aspect théâtral que
j’admirais dans les photographies d’actrices, ni de l’expression
diabolique qui eût été en rapport avec la vie qu’elle devait mener" :start 356 :end 537) (sentence :text "J’avais peine à croire que ce fût une cocotte et surtout je n’aurais
pas cru que ce fût une cocotte chic si je n’avais pas vu la voiture à
deux chevaux, la robe rose, le collier de perles, si je n’avais pas su
que mon oncle n’en connaissait que de la plus haute volée" :start 538 :end 806) (sentence :text "Mais je me
demandais comment le millionnaire qui lui donnait sa voiture et son
hôtel et ses bijoux pouvait avoir du plaisir à manger sa fortune pour
une personne qui avait l’air si simple et comme il faut" :start 807 :end 1012) (sentence :text "Et pourtant
en pensant à ce que devait être sa vie, l’immoralité m’en troublait
peut-être plus que si elle avait été concrétisée devant moi en une
apparence spéciale,--d’être ainsi invisible comme le secret de quelque
roman, de quelque scandale qui avait fait sortir de chez ses parents
bourgeois et voué à tout le monde, qui avait fait épanouir en beauté
et haussé jusqu’au demi-monde et à la notoriété celle que ses jeux de
physionomie, ses intonations de voix, pareils à tant d’autres que je
connaissais déjà, me faisaient malgré moi considérer comme une jeune
fille de bonne famille, qui n’était plus d’aucune famille" :start 1013 :end 1635)
 ))