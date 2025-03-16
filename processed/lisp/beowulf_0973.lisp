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
 :text "Mais si ces noms absorbèrent à tout jamais l’image que j’avais de ces
villes, ce ne fut qu’en la transformant, qu’en soumettant sa
réapparition en moi à leurs lois propres; ils eurent ainsi pour
conséquence de la rendre plus belle, mais aussi plus différente de ce
que les villes de Normandie ou de Toscane pouvaient être en réalité,
et, en accroissant les joies arbitraires de mon imagination,
d’aggraver la déception future de mes voyages. Ils exaltèrent l’idée
que je me faisais de certains lieux de la terre, en les faisant plus
particuliers, par conséquent plus réels. Je ne me représentais pas
alors les villes, les paysages, les monuments, comme des tableaux plus
ou moins agréables, découpés çà et là dans une même matière, mais
chacun d’eux comme un inconnu, essentiellement différent des autres,
dont mon âme avait soif et qu’elle aurait profit à connaître. Combien
ils prirent quelque chose de plus individuel encore, d’être désignés
par des noms, des noms qui n’étaient que pour eux, des noms comme en
ont les personnes. Les mots nous présentent des choses une petite
image claire et usuelle comme celles que l’on suspend aux murs des
écoles pour donner aux enfants l’exemple de ce qu’est un établi, un
oiseau, une fourmilière, choses conçues comme pareilles à toutes
celles de même sorte. Mais les noms présentent des personnes--et des
villes qu’ils nous habituent à croire individuelles, uniques comme des
personnes--une image confuse qui tire d’eux, de leur sonorité éclatante
ou sombre, la couleur dont elle est peinte uniformément comme une de
ces affiches, entièrement bleues ou entièrement rouges, dans
lesquelles, à cause des limites du procédé employé ou par un caprice
du décorateur, sont bleus ou rouges, non seulement le ciel et la mer,
mais les barques, l’église, les passants. Le nom de Parme, une des
villes où je désirais le plus aller, depuis que j’avais lu la
Chartreuse, m’apparaissant compact, lisse, mauve et doux; si on me
parlait d’une maison quelconque de Parme dans laquelle je serais reçu,
on me causait le plaisir de penser que j’habiterais une demeure lisse,
compacte, mauve et douce, qui n’avait de rapport avec les demeures
d’aucune ville d’Italie puisque je l’imaginais seulement à l’aide de
cette syllabe lourde du nom de Parme, où ne circule aucun air, et de
tout ce que je lui avais fait absorber de douceur stendhalienne et du
reflet des violettes. Et quand je pensais à Florence, c’était comme à
une ville miraculeusement embaumée et semblable à une corolle, parce
qu’elle s’appelait la cité des lys et sa cathédrale,
Sainte-Marie-des-Fleurs. Quant à Balbec, c’était un de ces noms où
comme sur une vieille poterie normande qui garde la couleur de la
terre d’où elle fut tirée, on voit se peindre encore la représentation
de quelque usage aboli, de quelque droit féodal, d’un état ancien de
lieux, d’une manière désuète de prononcer qui en avait formé les
syllabes hétéroclites et que je ne doutais pas de retrouver jusque
chez l’aubergiste qui me servirait du café au lait à mon arrivée, me
menant voir la mer déchaînée devant l’église et auquel je prêtais
l’aspect disputeur, solennel et médiéval d’un personnage de fabliau."
 :tokens 526
 :processed-at "2025-03-16T02:18:14.827697"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 0 :end 4) (entity :text "Normandie" :label "ORG" :start 283 :end 292) (entity :text "Toscane" :label "ORG" :start 299 :end 306) (entity :text "Combien" :label "ORG" :start 868 :end 875) (entity :text "Mais" :label "ORG" :start 1302 :end 1306) (entity :text "Parme," :label "ORG" :start 1813 :end 1819) (entity :text "Chartreuse," :label "ORG" :start 1890 :end 1901) (entity :text "Parme" :label "ORG" :start 1992 :end 1997) (entity :text "Parme," :label "ORG" :start 2266 :end 2272) (entity :text "Florence," :label "ORG" :start 2418 :end 2427) (entity :text "Quant" :label "ORG" :start 2591 :end 2596) (entity :text "Balbec," :label "ORG" :start 2599 :end 2606)
 )
 :sentences (list
  (sentence :text "Mais si ces noms absorbèrent à tout jamais l’image que j’avais de ces
villes, ce ne fut qu’en la transformant, qu’en soumettant sa
réapparition en moi à leurs lois propres; ils eurent ainsi pour
conséquence de la rendre plus belle, mais aussi plus différente de ce
que les villes de Normandie ou de Toscane pouvaient être en réalité,
et, en accroissant les joies arbitraires de mon imagination,
d’aggraver la déception future de mes voyages" :start 0 :end 440) (sentence :text "Ils exaltèrent l’idée
que je me faisais de certains lieux de la terre, en les faisant plus
particuliers, par conséquent plus réels" :start 441 :end 572) (sentence :text "Je ne me représentais pas
alors les villes, les paysages, les monuments, comme des tableaux plus
ou moins agréables, découpés çà et là dans une même matière, mais
chacun d’eux comme un inconnu, essentiellement différent des autres,
dont mon âme avait soif et qu’elle aurait profit à connaître" :start 573 :end 866) (sentence :text "Combien
ils prirent quelque chose de plus individuel encore, d’être désignés
par des noms, des noms qui n’étaient que pour eux, des noms comme en
ont les personnes" :start 867 :end 1031) (sentence :text "Les mots nous présentent des choses une petite
image claire et usuelle comme celles que l’on suspend aux murs des
écoles pour donner aux enfants l’exemple de ce qu’est un établi, un
oiseau, une fourmilière, choses conçues comme pareilles à toutes
celles de même sorte" :start 1032 :end 1300) (sentence :text "Mais les noms présentent des personnes--et des
villes qu’ils nous habituent à croire individuelles, uniques comme des
personnes--une image confuse qui tire d’eux, de leur sonorité éclatante
ou sombre, la couleur dont elle est peinte uniformément comme une de
ces affiches, entièrement bleues ou entièrement rouges, dans
lesquelles, à cause des limites du procédé employé ou par un caprice
du décorateur, sont bleus ou rouges, non seulement le ciel et la mer,
mais les barques, l’église, les passants" :start 1301 :end 1801) (sentence :text "Le nom de Parme, une des
villes où je désirais le plus aller, depuis que j’avais lu la
Chartreuse, m’apparaissant compact, lisse, mauve et doux; si on me
parlait d’une maison quelconque de Parme dans laquelle je serais reçu,
on me causait le plaisir de penser que j’habiterais une demeure lisse,
compacte, mauve et douce, qui n’avait de rapport avec les demeures
d’aucune ville d’Italie puisque je l’imaginais seulement à l’aide de
cette syllabe lourde du nom de Parme, où ne circule aucun air, et de
tout ce que je lui avais fait absorber de douceur stendhalienne et du
reflet des violettes" :start 1802 :end 2394) (sentence :text "Et quand je pensais à Florence, c’était comme à
une ville miraculeusement embaumée et semblable à une corolle, parce
qu’elle s’appelait la cité des lys et sa cathédrale,
Sainte-Marie-des-Fleurs" :start 2395 :end 2589) (sentence :text "Quant à Balbec, c’était un de ces noms où
comme sur une vieille poterie normande qui garde la couleur de la
terre d’où elle fut tirée, on voit se peindre encore la représentation
de quelque usage aboli, de quelque droit féodal, d’un état ancien de
lieux, d’une manière désuète de prononcer qui en avait formé les
syllabes hétéroclites et que je ne doutais pas de retrouver jusque
chez l’aubergiste qui me servirait du café au lait à mon arrivée, me
menant voir la mer déchaînée devant l’église et auquel je prêtais
l’aspect disputeur, solennel et médiéval d’un personnage de fabliau" :start 2590 :end 3173)
 ))