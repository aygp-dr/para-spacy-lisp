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
 :text "Et pourtant j’ai pensé depuis que si M. Vinteuil avait pu assister à
cette scène, il n’eût peut-être pas encore perdu sa foi dans le bon
cœur de sa fille, et peut-être même n’eût-il pas eu en cela tout à
fait tort. Certes, dans les habitudes de Mlle Vinteuil l’apparence du
mal était si entière qu’on aurait eu de la peine à la rencontrer
réalisée à ce degré de perfection ailleurs que chez une sadique; c’est
à la lumière de la rampe des théâtres du boulevard plutôt que sous la
lampe d’une maison de campagne véritable qu’on peut voir une fille
faire cracher une amie sur le portrait d’un père qui n’a vécu que pour
elle; et il n’y a guère que le sadisme qui donne un fondement dans la
vie à l’esthétique du mélodrame. Dans la réalité, en dehors des cas de
sadisme, une fille aurait peut-être des manquements aussi cruels que
ceux de Mlle Vinteuil envers la mémoire et les volontés de son père
mort, mais elle ne les résumerait pas expressément en un acte d’un
symbolisme aussi rudimentaire et aussi naïf; ce que sa conduite aurait
de criminel serait plus voilé aux yeux des autres et même à ses yeux à
elle qui ferait le mal sans se l’avouer. Mais, au-delà de l’apparence,
dans le cœur de Mlle Vinteuil, le mal, au début du moins, ne fut sans
doute pas sans mélange. Une sadique comme elle est l’artiste du mal,
ce qu’une créature entièrement mauvaise ne pourrait être car le mal ne
lui serait pas extérieur, il lui semblerait tout naturel, ne se
distinguerait même pas d’elle; et la vertu, la mémoire des morts, la
tendresse filiale, comme elle n’en aurait pas le culte, elle ne
trouverait pas un plaisir sacrilège à les profaner. Les sadiques de
l’espèce de Mlle Vinteuil sont des être si purement sentimentaux, si
naturellement vertueux que même le plaisir sensuel leur paraît quelque
chose de mauvais, le privilège des méchants. Et quand ils se concèdent
à eux-mêmes de s’y livrer un moment, c’est dans la peau des méchants
qu’ils tâchent d’entrer et de faire entrer leur complice, de façon à
avoir eu un moment l’illusion de s’être évadés de leur âme scrupuleuse
et tendre, dans le monde inhumain du plaisir. Et je comprenais combien
elle l’eût désiré en voyant combien il lui était impossible d’y
réussir. Au moment où elle se voulait si différente de son père, ce
qu’elle me rappelait c’était les façons de penser, de dire, du vieux
professeur de piano. Bien plus que sa photographie, ce qu’elle
profanait, ce qu’elle faisait servir à ses plaisirs mais qui restait
entre eux et elle et l’empêchait de les goûter directement, c’était la
ressemblance de son visage, les yeux bleus de sa mère à lui qu’il lui
avait transmis comme un bijou de famille, ces gestes d’amabilité qui
interposaient entre le vice de Mlle Vinteuil et elle une phraséologie,
une mentalité qui n’était pas faite pour lui et l’empêchait de le
connaître comme quelque chose de très différent des nombreux devoirs
de politesse auxquels elle se consacrait d’habitude. Ce n’est pas le
mal qui lui donnait l’idée du plaisir, qui lui semblait agréable;
c’est le plaisir qui lui semblait malin. Et comme chaque fois qu’elle
s’y adonnait il s’accompagnait pour elle de ces pensées mauvaises qui
le reste du temps étaient absentes de son âme vertueuse, elle
finissait par trouver au plaisir quelque chose de diabolique, par
l’identifier au Mal. Peut-être Mlle Vinteuil sentait-elle que son amie
n’était pas foncièrement mauvaise, et qu’elle n’était pas sincère au
moment où elle lui tenait ces propos blasphématoires. Du moins
avait-elle le plaisir d’embrasser sur son visage, des sourires, des
regards, feints peut-être, mais analogues dans leur expression
vicieuse et basse à ceux qu’aurait eus non un être de bonté et de
souffrance, mais un être de cruauté et de plaisir. Elle pouvait
s’imaginer un instant qu’elle jouait vraiment les jeux qu’eût joués
avec une complice aussi dénaturée, une fille qui aurait ressenti en
effet ces sentiments barbares à l’égard de la mémoire de son père.
Peut-être n’eût-elle pas pensé que le mal fût un état si rare, si
extraordinaire, si dépaysant, où il était si reposant d’émigrer, si
elle avait su discerner en elle comme en tout le monde, cette
indifférence aux souffrances qu’on cause et qui, quelques autres noms
qu’on lui donne, est la forme terrible et permanente de la cruauté."
 :tokens 738
 :processed-at "2025-03-16T02:18:14.166695"
 :entities (list
  (entity :text "Vinteuil" :label "ORG" :start 40 :end 48) (entity :text "Certes," :label "ORG" :start 215 :end 222) (entity :text "Mlle" :label "ORG" :start 245 :end 249) (entity :text "Vinteuil" :label "ORG" :start 250 :end 258) (entity :text "Dans" :label "ORG" :start 721 :end 725) (entity :text "Mlle" :label "ORG" :start 836 :end 840) (entity :text "Vinteuil" :label "ORG" :start 841 :end 849) (entity :text "Mais," :label "ORG" :start 1146 :end 1151) (entity :text "Mlle" :label "ORG" :start 1192 :end 1196) (entity :text "Vinteuil," :label "ORG" :start 1197 :end 1206) (entity :text "Mlle" :label "ORG" :start 1663 :end 1667) (entity :text "Vinteuil" :label "ORG" :start 1668 :end 1676) (entity :text "Bien" :label "ORG" :start 2364 :end 2368) (entity :text "Mlle" :label "ORG" :start 2716 :end 2720) (entity :text "Vinteuil" :label "ORG" :start 2721 :end 2729) (entity :text "Mal." :label "ORG" :start 3310 :end 3314) (entity :text "Mlle" :label "ORG" :start 3325 :end 3329) (entity :text "Vinteuil" :label "ORG" :start 3330 :end 3338) (entity :text "Elle" :label "ORG" :start 3745 :end 3749)
 )
 :sentences (list
  (sentence :text "Et pourtant j’ai pensé depuis que si M" :start 0 :end 38) (sentence :text "Vinteuil avait pu assister à
cette scène, il n’eût peut-être pas encore perdu sa foi dans le bon
cœur de sa fille, et peut-être même n’eût-il pas eu en cela tout à
fait tort" :start 39 :end 213) (sentence :text "Certes, dans les habitudes de Mlle Vinteuil l’apparence du
mal était si entière qu’on aurait eu de la peine à la rencontrer
réalisée à ce degré de perfection ailleurs que chez une sadique; c’est
à la lumière de la rampe des théâtres du boulevard plutôt que sous la
lampe d’une maison de campagne véritable qu’on peut voir une fille
faire cracher une amie sur le portrait d’un père qui n’a vécu que pour
elle; et il n’y a guère que le sadisme qui donne un fondement dans la
vie à l’esthétique du mélodrame" :start 214 :end 719) (sentence :text "Dans la réalité, en dehors des cas de
sadisme, une fille aurait peut-être des manquements aussi cruels que
ceux de Mlle Vinteuil envers la mémoire et les volontés de son père
mort, mais elle ne les résumerait pas expressément en un acte d’un
symbolisme aussi rudimentaire et aussi naïf; ce que sa conduite aurait
de criminel serait plus voilé aux yeux des autres et même à ses yeux à
elle qui ferait le mal sans se l’avouer" :start 720 :end 1144) (sentence :text "Mais, au-delà de l’apparence,
dans le cœur de Mlle Vinteuil, le mal, au début du moins, ne fut sans
doute pas sans mélange" :start 1145 :end 1268) (sentence :text "Une sadique comme elle est l’artiste du mal,
ce qu’une créature entièrement mauvaise ne pourrait être car le mal ne
lui serait pas extérieur, il lui semblerait tout naturel, ne se
distinguerait même pas d’elle; et la vertu, la mémoire des morts, la
tendresse filiale, comme elle n’en aurait pas le culte, elle ne
trouverait pas un plaisir sacrilège à les profaner" :start 1269 :end 1633) (sentence :text "Les sadiques de
l’espèce de Mlle Vinteuil sont des être si purement sentimentaux, si
naturellement vertueux que même le plaisir sensuel leur paraît quelque
chose de mauvais, le privilège des méchants" :start 1634 :end 1834) (sentence :text "Et quand ils se concèdent
à eux-mêmes de s’y livrer un moment, c’est dans la peau des méchants
qu’ils tâchent d’entrer et de faire entrer leur complice, de façon à
avoir eu un moment l’illusion de s’être évadés de leur âme scrupuleuse
et tendre, dans le monde inhumain du plaisir" :start 1835 :end 2115) (sentence :text "Et je comprenais combien
elle l’eût désiré en voyant combien il lui était impossible d’y
réussir" :start 2116 :end 2213) (sentence :text "Au moment où elle se voulait si différente de son père, ce
qu’elle me rappelait c’était les façons de penser, de dire, du vieux
professeur de piano" :start 2214 :end 2362) (sentence :text "Bien plus que sa photographie, ce qu’elle
profanait, ce qu’elle faisait servir à ses plaisirs mais qui restait
entre eux et elle et l’empêchait de les goûter directement, c’était la
ressemblance de son visage, les yeux bleus de sa mère à lui qu’il lui
avait transmis comme un bijou de famille, ces gestes d’amabilité qui
interposaient entre le vice de Mlle Vinteuil et elle une phraséologie,
une mentalité qui n’était pas faite pour lui et l’empêchait de le
connaître comme quelque chose de très différent des nombreux devoirs
de politesse auxquels elle se consacrait d’habitude" :start 2363 :end 2942) (sentence :text "Ce n’est pas le
mal qui lui donnait l’idée du plaisir, qui lui semblait agréable;
c’est le plaisir qui lui semblait malin" :start 2943 :end 3065) (sentence :text "Et comme chaque fois qu’elle
s’y adonnait il s’accompagnait pour elle de ces pensées mauvaises qui
le reste du temps étaient absentes de son âme vertueuse, elle
finissait par trouver au plaisir quelque chose de diabolique, par
l’identifier au Mal" :start 3066 :end 3313) (sentence :text "Peut-être Mlle Vinteuil sentait-elle que son amie
n’était pas foncièrement mauvaise, et qu’elle n’était pas sincère au
moment où elle lui tenait ces propos blasphématoires" :start 3314 :end 3486) (sentence :text "Du moins
avait-elle le plaisir d’embrasser sur son visage, des sourires, des
regards, feints peut-être, mais analogues dans leur expression
vicieuse et basse à ceux qu’aurait eus non un être de bonté et de
souffrance, mais un être de cruauté et de plaisir" :start 3487 :end 3743) (sentence :text "Elle pouvait
s’imaginer un instant qu’elle jouait vraiment les jeux qu’eût joués
avec une complice aussi dénaturée, une fille qui aurait ressenti en
effet ces sentiments barbares à l’égard de la mémoire de son père" :start 3744 :end 3959) (sentence :text "Peut-être n’eût-elle pas pensé que le mal fût un état si rare, si
extraordinaire, si dépaysant, où il était si reposant d’émigrer, si
elle avait su discerner en elle comme en tout le monde, cette
indifférence aux souffrances qu’on cause et qui, quelques autres noms
qu’on lui donne, est la forme terrible et permanente de la cruauté" :start 3960 :end 4293)
 ))