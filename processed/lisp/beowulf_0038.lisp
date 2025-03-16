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
 :text "L’angoisse que je venais d’éprouver, je pensais que Swann s’en serait
bien moqué s’il avait lu ma lettre et en avait deviné le but; or, au
contraire, comme je l’ai appris plus tard, une angoisse semblable fut
le tourment de longues années de sa vie et personne, aussi bien que
lui peut-être, n’aurait pu me comprendre; lui, cette angoisse qu’il y
a à sentir l’être qu’on aime dans un lieu de plaisir où l’on n’est
pas, où l’on ne peut pas le rejoindre, c’est l’amour qui la lui a fait
connaître, l’amour auquel elle est en quelque sorte prédestinée, par
lequel elle sera accaparée, spécialisée; mais quand, comme pour moi,
elle est entrée en nous avant qu’il ait encore fait son apparition
dans notre vie, elle flotte en l’attendant, vague et libre, sans
affectation déterminée, au service un jour d’un sentiment, le
lendemain d’un autre, tantôt de la tendresse filiale ou de l’amitié
pour un camarade. Et la joie avec laquelle je fis mon premier
apprentissage quand Françoise revint me dire que ma lettre serait
remise, Swann l’avait bien connue aussi cette joie trompeuse que nous
donne quelque ami, quelque parent de la femme que nous aimons, quand
arrivant à l’hôtel ou au théâtre où elle se trouve, pour quelque bal,
redoute, ou première où il va la retrouver, cet ami nous aperçoit
errant dehors, attendant désespérément quelque occasion de communiquer
avec elle. Il nous reconnaît, nous aborde familièrement, nous demande
ce que nous faisons là. Et comme nous inventons que nous avons quelque
chose d’urgent à dire à sa parente ou amie, il nous assure que rien
n’est plus simple, nous fait entrer dans le vestibule et nous promet
de nous l’envoyer avant cinq minutes. Que nous l’aimons--comme en ce
moment j’aimais Françoise--, l’intermédiaire bien intentionné qui d’un
mot vient de nous rendre supportable, humaine et presque propice la
fête inconcevable, infernale, au sein de laquelle nous croyions que
des tourbillons ennemis, pervers et délicieux entraînaient loin de
nous, la faisant rire de nous, celle que nous aimons. Si nous en
jugeons par lui, le parent qui nous a accosté et qui est lui aussi un
des initiés des cruels mystères, les autres invités de la fête ne
doivent rien avoir de bien démoniaque. Ces heures inaccessibles et
suppliciantes où elle allait goûter des plaisirs inconnus, voici que
par une brèche inespérée nous y pénétrons; voici qu’un des moments
dont la succession les aurait composées, un moment aussi réel que les
autres, même peut-être plus important pour nous, parce que notre
maîtresse y est plus mêlée, nous nous le représentons, nous le
possédons, nous y intervenons, nous l’avons créé presque: le moment où
on va lui dire que nous sommes là, en bas. Et sans doute les autres
moments de la fête ne devaient pas être d’une essence bien différente
de celui-là, ne devaient rien avoir de plus délicieux et qui dût tant
nous faire souffrir puisque l’ami bienveillant nous a dit: «Mais elle
sera ravie de descendre! Cela lui fera beaucoup plus de plaisir de
causer avec vous que de s’ennuyer là-haut.» Hélas! Swann en avait fait
l’expérience, les bonnes intentions d’un tiers sont sans pouvoir sur
une femme qui s’irrite de se sentir poursuivie jusque dans une fête
par quelqu’un qu’elle n’aime pas. Souvent, l’ami redescend seul."
 :tokens 550
 :processed-at "2025-03-16T02:18:13.818822"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 52 :end 57) (entity :text "Françoise" :label "ORG" :start 967 :end 976) (entity :text "Swann" :label "ORG" :start 1021 :end 1026) (entity :text "Françoise--," :label "ORG" :start 1722 :end 1734) (entity :text "«Mais" :label "ORG" :start 2920 :end 2925) (entity :text "Cela" :label "ORG" :start 2956 :end 2960) (entity :text "Hélas!" :label "ORG" :start 3042 :end 3048) (entity :text "Swann" :label "ORG" :start 3049 :end 3054) (entity :text "Souvent," :label "ORG" :start 3240 :end 3248)
 )
 :sentences (list
  (sentence :text "L’angoisse que je venais d’éprouver, je pensais que Swann s’en serait
bien moqué s’il avait lu ma lettre et en avait deviné le but; or, au
contraire, comme je l’ai appris plus tard, une angoisse semblable fut
le tourment de longues années de sa vie et personne, aussi bien que
lui peut-être, n’aurait pu me comprendre; lui, cette angoisse qu’il y
a à sentir l’être qu’on aime dans un lieu de plaisir où l’on n’est
pas, où l’on ne peut pas le rejoindre, c’est l’amour qui la lui a fait
connaître, l’amour auquel elle est en quelque sorte prédestinée, par
lequel elle sera accaparée, spécialisée; mais quand, comme pour moi,
elle est entrée en nous avant qu’il ait encore fait son apparition
dans notre vie, elle flotte en l’attendant, vague et libre, sans
affectation déterminée, au service un jour d’un sentiment, le
lendemain d’un autre, tantôt de la tendresse filiale ou de l’amitié
pour un camarade" :start 0 :end 901) (sentence :text "Et la joie avec laquelle je fis mon premier
apprentissage quand Françoise revint me dire que ma lettre serait
remise, Swann l’avait bien connue aussi cette joie trompeuse que nous
donne quelque ami, quelque parent de la femme que nous aimons, quand
arrivant à l’hôtel ou au théâtre où elle se trouve, pour quelque bal,
redoute, ou première où il va la retrouver, cet ami nous aperçoit
errant dehors, attendant désespérément quelque occasion de communiquer
avec elle" :start 902 :end 1368) (sentence :text "Il nous reconnaît, nous aborde familièrement, nous demande
ce que nous faisons là" :start 1369 :end 1451) (sentence :text "Et comme nous inventons que nous avons quelque
chose d’urgent à dire à sa parente ou amie, il nous assure que rien
n’est plus simple, nous fait entrer dans le vestibule et nous promet
de nous l’envoyer avant cinq minutes" :start 1452 :end 1673) (sentence :text "Que nous l’aimons--comme en ce
moment j’aimais Françoise--, l’intermédiaire bien intentionné qui d’un
mot vient de nous rendre supportable, humaine et presque propice la
fête inconcevable, infernale, au sein de laquelle nous croyions que
des tourbillons ennemis, pervers et délicieux entraînaient loin de
nous, la faisant rire de nous, celle que nous aimons" :start 1674 :end 2032) (sentence :text "Si nous en
jugeons par lui, le parent qui nous a accosté et qui est lui aussi un
des initiés des cruels mystères, les autres invités de la fête ne
doivent rien avoir de bien démoniaque" :start 2033 :end 2218) (sentence :text "Ces heures inaccessibles et
suppliciantes où elle allait goûter des plaisirs inconnus, voici que
par une brèche inespérée nous y pénétrons; voici qu’un des moments
dont la succession les aurait composées, un moment aussi réel que les
autres, même peut-être plus important pour nous, parce que notre
maîtresse y est plus mêlée, nous nous le représentons, nous le
possédons, nous y intervenons, nous l’avons créé presque: le moment où
on va lui dire que nous sommes là, en bas" :start 2219 :end 2694) (sentence :text "Et sans doute les autres
moments de la fête ne devaient pas être d’une essence bien différente
de celui-là, ne devaient rien avoir de plus délicieux et qui dût tant
nous faire souffrir puisque l’ami bienveillant nous a dit: «Mais elle
sera ravie de descendre! Cela lui fera beaucoup plus de plaisir de
causer avec vous que de s’ennuyer là-haut" :start 2695 :end 3039) (sentence :text "» Hélas! Swann en avait fait
l’expérience, les bonnes intentions d’un tiers sont sans pouvoir sur
une femme qui s’irrite de se sentir poursuivie jusque dans une fête
par quelqu’un qu’elle n’aime pas" :start 3040 :end 3238) (sentence :text "Souvent, l’ami redescend seul" :start 3239 :end 3269)
 ))