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
 :text "Le premier de ces jours--auxquels la neige, image des puissances qui
pouvaient me priver de voir Gilberte, donnait la tristesse d’un jour
de séparation et jusqu’à l’aspect d’un jour de départ parce qu’il
changeait la figure et empêchait presque l’usage du lieu habituel de
nos seules entrevues maintenant changé, tout enveloppé de housses--, ce
jour fit pourtant faire un progrès à mon amour, car il fut comme un
premier chagrin qu’elle eût partagé avec moi. Il n’y avait que nous
deux de notre bande, et être ainsi le seul qui fût avec elle, c’était
non seulement comme un commencement d’intimité, mais aussi de sa
part,--comme si elle ne fût venue rien que pour moi par un temps
pareil--cela me semblait aussi touchant que si un de ces jours où elle
était invitée à une matinée, elle y avait renoncé pour venir me
retrouver aux Champs-Élysées; je prenais plus de confiance en la
vitalité et en l’avenir de notre amitié qui restait vivace au milieu
de l’engourdissement, de la solitude et de la ruine des choses
environnantes; et tandis qu’elle me mettait des boules de neige dans
le cou, je souriais avec attendrissement à ce qui me semblait à la
fois une prédilection qu’elle me marquait en me tolérant comme
compagnon de voyage dans ce pays hivernal et nouveau, et une sorte de
fidélité qu’elle me gardait au milieu du malheur. Bientôt l’une après
l’autre, comme des moineaux hésitants, ses amies arrivèrent toutes
noires sur la neige. Nous commençâmes à jouer et comme ce jour si
tristement commencé devait finir dans la joie, comme je m’approchais,
avant de jouer aux barres, de l’amie à la voix brève que j’avais
entendue le premier jour crier le nom de Gilberte, elle me dit: «Non,
non, on sait bien que vous aimez mieux être dans le camp de Gilberte,
d’ailleurs vous voyez elle vous fait signe.» Elle m’appelait en effet
pour que je vinsse sur la pelouse de neige, dans son camp, dont le
soleil en lui donnant les reflets roses, l’usure métallique des
brocarts anciens, faisait un camp du drap d’or."
 :tokens 348
 :processed-at "2025-03-16T02:18:14.847439"
 :entities (list
  (entity :text "Gilberte," :label "ORG" :start 97 :end 106) (entity :text "Champs-Élysées;" :label "ORG" :start 830 :end 845) (entity :text "Bientôt" :label "ORG" :start 1332 :end 1339) (entity :text "Nous" :label "ORG" :start 1440 :end 1444) (entity :text "Gilberte," :label "ORG" :start 1661 :end 1670) (entity :text "«Non," :label "ORG" :start 1684 :end 1689) (entity :text "Gilberte," :label "ORG" :start 1750 :end 1759) (entity :text "Elle" :label "ORG" :start 1805 :end 1809)
 )
 :sentences (list
  (sentence :text "Le premier de ces jours--auxquels la neige, image des puissances qui
pouvaient me priver de voir Gilberte, donnait la tristesse d’un jour
de séparation et jusqu’à l’aspect d’un jour de départ parce qu’il
changeait la figure et empêchait presque l’usage du lieu habituel de
nos seules entrevues maintenant changé, tout enveloppé de housses--, ce
jour fit pourtant faire un progrès à mon amour, car il fut comme un
premier chagrin qu’elle eût partagé avec moi" :start 0 :end 457) (sentence :text "Il n’y avait que nous
deux de notre bande, et être ainsi le seul qui fût avec elle, c’était
non seulement comme un commencement d’intimité, mais aussi de sa
part,--comme si elle ne fût venue rien que pour moi par un temps
pareil--cela me semblait aussi touchant que si un de ces jours où elle
était invitée à une matinée, elle y avait renoncé pour venir me
retrouver aux Champs-Élysées; je prenais plus de confiance en la
vitalité et en l’avenir de notre amitié qui restait vivace au milieu
de l’engourdissement, de la solitude et de la ruine des choses
environnantes; et tandis qu’elle me mettait des boules de neige dans
le cou, je souriais avec attendrissement à ce qui me semblait à la
fois une prédilection qu’elle me marquait en me tolérant comme
compagnon de voyage dans ce pays hivernal et nouveau, et une sorte de
fidélité qu’elle me gardait au milieu du malheur" :start 458 :end 1330) (sentence :text "Bientôt l’une après
l’autre, comme des moineaux hésitants, ses amies arrivèrent toutes
noires sur la neige" :start 1331 :end 1438) (sentence :text "Nous commençâmes à jouer et comme ce jour si
tristement commencé devait finir dans la joie, comme je m’approchais,
avant de jouer aux barres, de l’amie à la voix brève que j’avais
entendue le premier jour crier le nom de Gilberte, elle me dit: «Non,
non, on sait bien que vous aimez mieux être dans le camp de Gilberte,
d’ailleurs vous voyez elle vous fait signe" :start 1439 :end 1802) (sentence :text "» Elle m’appelait en effet
pour que je vinsse sur la pelouse de neige, dans son camp, dont le
soleil en lui donnant les reflets roses, l’usure métallique des
brocarts anciens, faisait un camp du drap d’or" :start 1803 :end 2007)
 ))