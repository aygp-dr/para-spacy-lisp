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
 :text "J’entendis les pas de mes parents qui accompagnaient Swann; et quand
le grelot de la porte m’eut averti qu’il venait de partir, j’allai à
la fenêtre. Maman demandait à mon père s’il avait trouvé la langouste
bonne et si M. Swann avait repris de la glace au café et à la
pistache. «Je l’ai trouvée bien quelconque, dit ma mère; je crois que
la prochaine fois il faudra essayer d’un autre parfum.» «Je ne peux
pas dire comme je trouve que Swann change, dit ma grand’tante, il est
d’un vieux!» Ma grand’tante avait tellement l’habitude de voir
toujours en Swann un même adolescent, qu’elle s’étonnait de le trouver
tout à coup moins jeune que l’âge qu’elle continuait à lui donner. Et
mes parents du reste commençaient à lui trouver cette vieillesse
anormale, excessive, honteuse et méritée des célibataires, de tous
ceux pour qui il semble que le grand jour qui n’a pas de lendemain
soit plus long que pour les autres, parce que pour eux il est vide et
que les moments s’y additionnent depuis le matin sans se diviser
ensuite entre des enfants. «Je crois qu’il a beaucoup de soucis avec
sa coquine de femme qui vit au su de tout Combray avec un certain
monsieur de Charlus. C’est la fable de la ville.» Ma mère fit
remarquer qu’il avait pourtant l’air bien moins triste depuis quelque
temps. «Il fait aussi moins souvent ce geste qu’il a tout à fait comme
son père de s’essuyer les yeux et de se passer la main sur le front.
Moi je crois qu’au fond il n’aime plus cette femme.» «Mais
naturellement il ne l’aime plus, répondit mon grand-père. J’ai reçu de
lui il y a déjà longtemps une lettre à ce sujet, à laquelle je me suis
empressé de ne pas me conformer, et qui ne laisse aucun doute sur ses
sentiments au moins d’amour, pour sa femme. Hé bien! vous voyez, vous
ne l’avez pas remercié pour l’Asti», ajouta mon grand-père en se
tournant vers ses deux belles-sœurs. «Comment, nous ne l’avons pas
remercié? je crois, entre nous, que je lui ai même tourné cela assez
délicatement», répondit ma tante Flora. «Oui, tu as très bien arrangé
cela: je t’ai admirée», dit ma tante Céline. «Mais toi tu as été très
bien aussi.» «Oui j’étais assez fière de ma phrase sur les voisins
aimables.» «Comment, c’est cela que vous appelez remercier! s’écria
mon grand-père. J’ai bien entendu cela, mais du diable si j’ai cru que
c’était pour Swann. Vous pouvez être sûres qu’il n’a rien compris.»
«Mais voyons, Swann n’est pas bête, je suis certaine qu’il a apprécié.
Je ne pouvais cependant pas lui dire le nombre de bouteilles et le
prix du vin!» Mon père et ma mère restèrent seuls, et s’assirent un
instant; puis mon père dit: «Hé bien! si tu veux, nous allons monter
nous coucher.» «Si tu veux, mon ami, bien que je n’aie pas l’ombre de
sommeil; ce n’est pas cette glace au café si anodine qui a pu pourtant
me tenir si éveillée; mais j’aperçois de la lumière dans l’office et
puisque la pauvre Françoise m’a attendue, je vais lui demander de
dégrafer mon corsage pendant que tu vas te déshabiller.» Et ma mère
ouvrit la porte treillagée du vestibule qui donnait sur l’escalier.
Bientôt, je l’entendis qui montait fermer sa fenêtre. J’allai sans
bruit dans le couloir; mon cœur battait si fort que j’avais de la
peine à avancer, mais du moins il ne battait plus d’anxiété, mais
d’épouvante et de joie. Je vis dans la cage de l’escalier la lumière
projetée par la bougie de maman. Puis je la vis elle-même; je
m’élançai. À la première seconde, elle me regarda avec étonnement, ne
comprenant pas ce qui était arrivé. Puis sa figure prit une expression
de colère, elle ne me disait même pas un mot, et en effet pour bien
moins que cela on ne m’adressait plus la parole pendant plusieurs
jours. Si maman m’avait dit un mot, ç’aurait été admettre qu’on
pouvait me reparler et d’ailleurs cela peut-être m’eût paru plus
terrible encore, comme un signe que devant la gravité du châtiment qui
allait se préparer, le silence, la brouille, eussent été puérils. Une
parole c’eût été le calme avec lequel on répond à un domestique quand
on vient de décider de le renvoyer; le baiser qu’on donne à un fils
qu’on envoie s’engager alors qu’on le lui aurait refusé si on devait
se contenter d’être fâché deux jours avec lui. Mais elle entendit mon
père qui montait du cabinet de toilette où il était allé se
déshabiller et pour éviter la scène qu’il me ferait, elle me dit d’une
voix entrecoupée par la colère: «Sauve-toi, sauve-toi, qu’au moins ton
père ne t’ait vu ainsi attendant comme un fou!» Mais je lui répétais:
«Viens me dire bonsoir», terrifié en voyant que le reflet de la bougie
de mon père s’élevait déjà sur le mur, mais aussi usant de son
approche comme d’un moyen de chantage et espérant que maman, pour
éviter que mon père me trouvât encore là si elle continuait à refuser,
allait me dire: «Rentre dans ta chambre, je vais venir.» Il était trop
tard, mon père était devant nous. Sans le vouloir, je murmurai ces
mots que personne n’entendit: «Je suis perdu!»"
 :tokens 883
 :processed-at "2025-03-16T02:18:13.823721"
 :entities (list
  (entity :text "Swann;" :label "ORG" :start 53 :end 59) (entity :text "Maman" :label "ORG" :start 150 :end 155) (entity :text "Swann" :label "ORG" :start 223 :end 228) (entity :text "Swann" :label "ORG" :start 437 :end 442) (entity :text "Swann" :label "ORG" :start 553 :end 558) (entity :text "Combray" :label "ORG" :start 1127 :end 1134) (entity :text "Charlus." :label "ORG" :start 1163 :end 1171) (entity :text "«Mais" :label "ORG" :start 1476 :end 1481) (entity :text "«Comment," :label "ORG" :start 1866 :end 1875) (entity :text "Flora." :label "ORG" :start 1998 :end 2004) (entity :text "«Oui," :label "ORG" :start 2005 :end 2010) (entity :text "Céline." :label "ORG" :start 2072 :end 2079) (entity :text "«Mais" :label "ORG" :start 2080 :end 2085) (entity :text "«Oui" :label "ORG" :start 2118 :end 2122) (entity :text "«Comment," :label "ORG" :start 2183 :end 2192) (entity :text "Swann." :label "ORG" :start 2324 :end 2330) (entity :text "Vous" :label "ORG" :start 2331 :end 2335) (entity :text "«Mais" :label "ORG" :start 2379 :end 2384) (entity :text "Swann" :label "ORG" :start 2393 :end 2398) (entity :text "Françoise" :label "ORG" :start 2882 :end 2891) (entity :text "Bientôt," :label "ORG" :start 3066 :end 3074) (entity :text "Puis" :label "ORG" :start 3367 :end 3371) (entity :text "Puis" :label "ORG" :start 3502 :end 3506) (entity :text "Mais" :label "ORG" :start 4195 :end 4199) (entity :text "Mais" :label "ORG" :start 4468 :end 4472) (entity :text "«Viens" :label "ORG" :start 4490 :end 4496) (entity :text "«Rentre" :label "ORG" :start 4777 :end 4784) (entity :text "Sans" :label "ORG" :start 4866 :end 4870)
 )
 :sentences (list
  (sentence :text "J’entendis les pas de mes parents qui accompagnaient Swann; et quand
le grelot de la porte m’eut averti qu’il venait de partir, j’allai à
la fenêtre" :start 0 :end 148) (sentence :text "Maman demandait à mon père s’il avait trouvé la langouste
bonne et si M" :start 149 :end 221) (sentence :text "Swann avait repris de la glace au café et à la
pistache" :start 222 :end 278) (sentence :text "«Je l’ai trouvée bien quelconque, dit ma mère; je crois que
la prochaine fois il faudra essayer d’un autre parfum" :start 279 :end 393) (sentence :text "» «Je ne peux
pas dire comme je trouve que Swann change, dit ma grand’tante, il est
d’un vieux!» Ma grand’tante avait tellement l’habitude de voir
toujours en Swann un même adolescent, qu’elle s’étonnait de le trouver
tout à coup moins jeune que l’âge qu’elle continuait à lui donner" :start 394 :end 677) (sentence :text "Et
mes parents du reste commençaient à lui trouver cette vieillesse
anormale, excessive, honteuse et méritée des célibataires, de tous
ceux pour qui il semble que le grand jour qui n’a pas de lendemain
soit plus long que pour les autres, parce que pour eux il est vide et
que les moments s’y additionnent depuis le matin sans se diviser
ensuite entre des enfants" :start 678 :end 1041) (sentence :text "«Je crois qu’il a beaucoup de soucis avec
sa coquine de femme qui vit au su de tout Combray avec un certain
monsieur de Charlus" :start 1042 :end 1170) (sentence :text "C’est la fable de la ville" :start 1171 :end 1198) (sentence :text "» Ma mère fit
remarquer qu’il avait pourtant l’air bien moins triste depuis quelque
temps" :start 1199 :end 1288) (sentence :text "«Il fait aussi moins souvent ce geste qu’il a tout à fait comme
son père de s’essuyer les yeux et de se passer la main sur le front" :start 1289 :end 1421) (sentence :text "Moi je crois qu’au fond il n’aime plus cette femme" :start 1422 :end 1473) (sentence :text "» «Mais
naturellement il ne l’aime plus, répondit mon grand-père" :start 1474 :end 1538) (sentence :text "J’ai reçu de
lui il y a déjà longtemps une lettre à ce sujet, à laquelle je me suis
empressé de ne pas me conformer, et qui ne laisse aucun doute sur ses
sentiments au moins d’amour, pour sa femme" :start 1539 :end 1736) (sentence :text "Hé bien! vous voyez, vous
ne l’avez pas remercié pour l’Asti», ajouta mon grand-père en se
tournant vers ses deux belles-sœurs" :start 1737 :end 1864) (sentence :text "«Comment, nous ne l’avons pas
remercié? je crois, entre nous, que je lui ai même tourné cela assez
délicatement», répondit ma tante Flora" :start 1865 :end 2003) (sentence :text "«Oui, tu as très bien arrangé
cela: je t’ai admirée», dit ma tante Céline" :start 2004 :end 2078) (sentence :text "«Mais toi tu as été très
bien aussi" :start 2079 :end 2115) (sentence :text "» «Oui j’étais assez fière de ma phrase sur les voisins
aimables" :start 2116 :end 2180) (sentence :text "» «Comment, c’est cela que vous appelez remercier! s’écria
mon grand-père" :start 2181 :end 2254) (sentence :text "J’ai bien entendu cela, mais du diable si j’ai cru que
c’était pour Swann" :start 2255 :end 2329) (sentence :text "Vous pouvez être sûres qu’il n’a rien compris" :start 2330 :end 2376) (sentence :text "»
«Mais voyons, Swann n’est pas bête, je suis certaine qu’il a apprécié" :start 2377 :end 2448) (sentence :text "Je ne pouvais cependant pas lui dire le nombre de bouteilles et le
prix du vin!» Mon père et ma mère restèrent seuls, et s’assirent un
instant; puis mon père dit: «Hé bien! si tu veux, nous allons monter
nous coucher" :start 2449 :end 2666) (sentence :text "» «Si tu veux, mon ami, bien que je n’aie pas l’ombre de
sommeil; ce n’est pas cette glace au café si anodine qui a pu pourtant
me tenir si éveillée; mais j’aperçois de la lumière dans l’office et
puisque la pauvre Françoise m’a attendue, je vais lui demander de
dégrafer mon corsage pendant que tu vas te déshabiller" :start 2667 :end 2984) (sentence :text "» Et ma mère
ouvrit la porte treillagée du vestibule qui donnait sur l’escalier" :start 2985 :end 3064) (sentence :text "Bientôt, je l’entendis qui montait fermer sa fenêtre" :start 3065 :end 3118) (sentence :text "J’allai sans
bruit dans le couloir; mon cœur battait si fort que j’avais de la
peine à avancer, mais du moins il ne battait plus d’anxiété, mais
d’épouvante et de joie" :start 3119 :end 3287) (sentence :text "Je vis dans la cage de l’escalier la lumière
projetée par la bougie de maman" :start 3288 :end 3365) (sentence :text "Puis je la vis elle-même; je
m’élançai" :start 3366 :end 3405) (sentence :text "À la première seconde, elle me regarda avec étonnement, ne
comprenant pas ce qui était arrivé" :start 3406 :end 3500) (sentence :text "Puis sa figure prit une expression
de colère, elle ne me disait même pas un mot, et en effet pour bien
moins que cela on ne m’adressait plus la parole pendant plusieurs
jours" :start 3501 :end 3676) (sentence :text "Si maman m’avait dit un mot, ç’aurait été admettre qu’on
pouvait me reparler et d’ailleurs cela peut-être m’eût paru plus
terrible encore, comme un signe que devant la gravité du châtiment qui
allait se préparer, le silence, la brouille, eussent été puérils" :start 3677 :end 3935) (sentence :text "Une
parole c’eût été le calme avec lequel on répond à un domestique quand
on vient de décider de le renvoyer; le baiser qu’on donne à un fils
qu’on envoie s’engager alors qu’on le lui aurait refusé si on devait
se contenter d’être fâché deux jours avec lui" :start 3936 :end 4193) (sentence :text "Mais elle entendit mon
père qui montait du cabinet de toilette où il était allé se
déshabiller et pour éviter la scène qu’il me ferait, elle me dit d’une
voix entrecoupée par la colère: «Sauve-toi, sauve-toi, qu’au moins ton
père ne t’ait vu ainsi attendant comme un fou!» Mais je lui répétais:
«Viens me dire bonsoir», terrifié en voyant que le reflet de la bougie
de mon père s’élevait déjà sur le mur, mais aussi usant de son
approche comme d’un moyen de chantage et espérant que maman, pour
éviter que mon père me trouvât encore là si elle continuait à refuser,
allait me dire: «Rentre dans ta chambre, je vais venir" :start 4194 :end 4815) (sentence :text "» Il était trop
tard, mon père était devant nous" :start 4816 :end 4864) (sentence :text "Sans le vouloir, je murmurai ces
mots que personne n’entendit: «Je suis perdu!»" :start 4865 :end 4945)
 ))