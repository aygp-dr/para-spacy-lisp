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
 :text "Tous les soirs je me plaisais à imaginer cette lettre, je croyais la
lire, je m’en récitais chaque phrase. Tout d’un coup je m’arrêtais
effrayé. Je comprenais que si je devais recevoir une lettre de
Gilberte, ce ne pourrait pas en tous cas être celle-là puisque c’était
moi qui venais de la composer. Et dès lors, je m’efforçais de
détourner ma pensée des mots que j’aurais aimé qu’elle m’écrivît, par
peur en les énonçant, d’exclure justement ceux-là,--les plus chers, les
plus désirés--, du champ des réalisations possibles. Même si par une
invraisemblable coïncidence, c’eût été justement la lettre que j’avais
inventée que de son côté m’eût adressée Gilberte, y reconnaissant mon
œuvre je n’eusse pas eu l’impression de recevoir quelque chose qui ne
vînt pas de moi, quelque chose de réel, de nouveau, un bonheur
extérieur à mon esprit, indépendant de ma volonté, vraiment donné par
l’amour."
 :tokens 147
 :processed-at "2025-03-16T02:18:14.868240"
 :entities (list
  (entity :text "Tous" :label "ORG" :start 0 :end 4) (entity :text "Tout" :label "ORG" :start 107 :end 111) (entity :text "Gilberte," :label "ORG" :start 199 :end 208) (entity :text "Même" :label "ORG" :start 527 :end 531) (entity :text "Gilberte," :label "ORG" :start 654 :end 663)
 )
 :sentences (list
  (sentence :text "Tous les soirs je me plaisais à imaginer cette lettre, je croyais la
lire, je m’en récitais chaque phrase" :start 0 :end 105) (sentence :text "Tout d’un coup je m’arrêtais
effrayé" :start 106 :end 143) (sentence :text "Je comprenais que si je devais recevoir une lettre de
Gilberte, ce ne pourrait pas en tous cas être celle-là puisque c’était
moi qui venais de la composer" :start 144 :end 299) (sentence :text "Et dès lors, je m’efforçais de
détourner ma pensée des mots que j’aurais aimé qu’elle m’écrivît, par
peur en les énonçant, d’exclure justement ceux-là,--les plus chers, les
plus désirés--, du champ des réalisations possibles" :start 300 :end 525) (sentence :text "Même si par une
invraisemblable coïncidence, c’eût été justement la lettre que j’avais
inventée que de son côté m’eût adressée Gilberte, y reconnaissant mon
œuvre je n’eusse pas eu l’impression de recevoir quelque chose qui ne
vînt pas de moi, quelque chose de réel, de nouveau, un bonheur
extérieur à mon esprit, indépendant de ma volonté, vraiment donné par
l’amour" :start 526 :end 894)
 ))