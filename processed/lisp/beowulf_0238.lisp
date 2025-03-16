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
 :text "--«Mais si, dans le coin du vitrail vous n’avez jamais remarqué une
dame en robe jaune? Hé bien! c’est Saint-Hilaire qu’on appelle aussi,
vous le savez, dans certaines provinces, Saint-Illiers, Saint-Hélier,
et même, dans le Jura, Saint-Ylie. Ces diverses corruptions de sanctus
Hilarius ne sont pas du reste les plus curieuses de celles qui se sont
produites dans les noms des bienheureux. Ainsi votre patronne, ma
bonne Eulalie, sancta Eulalia, savez-vous ce qu’elle est devenue en
Bourgogne? Saint-Eloi tout simplement: elle est devenue un saint.
Voyez-vous, Eulalie, qu’après votre mort on fasse de vous un
homme?»--«Monsieur le Curé a toujours le mot pour rigoler.»--«Le frère
de Gilbert, Charles le Bègue, prince pieux mais qui, ayant perdu de
bonne heure son père, Pépin l’Insensé, mort des suites de sa maladie
mentale, exerçait le pouvoir suprême avec toute la présomption d’une
jeunesse à qui la discipline a manqué; dès que la figure d’un
particulier ne lui revenait pas dans une ville, il y faisait massacrer
jusqu’au dernier habitant. Gilbert voulant se venger de Charles fit
brûler l’église de Combray, la primitive église alors, celle que
Théodebert, en quittant avec sa cour la maison de campagne qu’il avait
près d’ici, à Thiberzy (Theodeberciacus), pour aller combattre les
Burgondes, avait promis de bâtir au-dessus du tombeau de
Saint-Hilaire, si le Bienheureux lui procurait la victoire. Il n’en
reste que la crypte où Théodore a dû vous faire descendre, puisque
Gilbert brûla le reste. Ensuite il défit l’infortuné Charles avec
l’aide de Guillaume Le Conquérant (le curé prononçait Guilôme), ce qui
fait que beaucoup d’Anglais viennent pour visiter. Mais il ne semble
pas avoir su se concilier la sympathie des habitants de Combray, car
ceux-ci se ruèrent sur lui à la sortie de la messe et lui tranchèrent
la tête. Du reste Théodore prête un petit livre qui donne les
explications."
 :tokens 306
 :processed-at "2025-03-16T02:18:14.032820"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "Saint-Hilaire" :label "ORG" :start 103 :end 116) (entity :text "Saint-Illiers," :label "ORG" :start 179 :end 193) (entity :text "Saint-Hélier," :label "ORG" :start 194 :end 207) (entity :text "Jura," :label "ORG" :start 225 :end 230) (entity :text "Saint-Ylie." :label "ORG" :start 231 :end 242) (entity :text "Hilarius" :label "ORG" :start 279 :end 287) (entity :text "Eulalie," :label "ORG" :start 422 :end 430) (entity :text "Eulalia," :label "ORG" :start 438 :end 446) (entity :text "Bourgogne?" :label "ORG" :start 484 :end 494) (entity :text "Saint-Eloi" :label "ORG" :start 495 :end 505) (entity :text "Eulalie," :label "ORG" :start 562 :end 570) (entity :text "Curé" :label "ORG" :start 633 :end 637) (entity :text "Gilbert," :label "ORG" :start 685 :end 693) (entity :text "Charles" :label "ORG" :start 694 :end 701) (entity :text "Bègue," :label "ORG" :start 705 :end 711) (entity :text "Pépin" :label "ORG" :start 772 :end 777) (entity :text "Gilbert" :label "ORG" :start 1048 :end 1055) (entity :text "Charles" :label "ORG" :start 1077 :end 1084) (entity :text "Combray," :label "ORG" :start 1108 :end 1116) (entity :text "Théodebert," :label "ORG" :start 1154 :end 1165) (entity :text "Thiberzy" :label "ORG" :start 1239 :end 1247) (entity :text "(Theodeberciacus)," :label "ORG" :start 1248 :end 1266) (entity :text "Burgondes," :label "ORG" :start 1292 :end 1302) (entity :text "Saint-Hilaire," :label "ORG" :start 1349 :end 1363) (entity :text "Bienheureux" :label "ORG" :start 1370 :end 1381) (entity :text "Théodore" :label "ORG" :start 1440 :end 1448) (entity :text "Gilbert" :label "ORG" :start 1484 :end 1491) (entity :text "Ensuite" :label "ORG" :start 1508 :end 1515) (entity :text "Charles" :label "ORG" :start 1537 :end 1544) (entity :text "Guillaume" :label "ORG" :start 1560 :end 1569) (entity :text "Conquérant" :label "ORG" :start 1573 :end 1583) (entity :text "Guilôme)," :label "ORG" :start 1604 :end 1613) (entity :text "Mais" :label "ORG" :start 1672 :end 1676) (entity :text "Combray," :label "ORG" :start 1746 :end 1754) (entity :text "Théodore" :label "ORG" :start 1847 :end 1855)
 )
 :sentences (list
  (sentence :text "--«Mais si, dans le coin du vitrail vous n’avez jamais remarqué une
dame en robe jaune? Hé bien! c’est Saint-Hilaire qu’on appelle aussi,
vous le savez, dans certaines provinces, Saint-Illiers, Saint-Hélier,
et même, dans le Jura, Saint-Ylie" :start 0 :end 241) (sentence :text "Ces diverses corruptions de sanctus
Hilarius ne sont pas du reste les plus curieuses de celles qui se sont
produites dans les noms des bienheureux" :start 242 :end 389) (sentence :text "Ainsi votre patronne, ma
bonne Eulalie, sancta Eulalia, savez-vous ce qu’elle est devenue en
Bourgogne? Saint-Eloi tout simplement: elle est devenue un saint" :start 390 :end 548) (sentence :text "Voyez-vous, Eulalie, qu’après votre mort on fasse de vous un
homme?»--«Monsieur le Curé a toujours le mot pour rigoler" :start 549 :end 668) (sentence :text "»--«Le frère
de Gilbert, Charles le Bègue, prince pieux mais qui, ayant perdu de
bonne heure son père, Pépin l’Insensé, mort des suites de sa maladie
mentale, exerçait le pouvoir suprême avec toute la présomption d’une
jeunesse à qui la discipline a manqué; dès que la figure d’un
particulier ne lui revenait pas dans une ville, il y faisait massacrer
jusqu’au dernier habitant" :start 669 :end 1046) (sentence :text "Gilbert voulant se venger de Charles fit
brûler l’église de Combray, la primitive église alors, celle que
Théodebert, en quittant avec sa cour la maison de campagne qu’il avait
près d’ici, à Thiberzy (Theodeberciacus), pour aller combattre les
Burgondes, avait promis de bâtir au-dessus du tombeau de
Saint-Hilaire, si le Bienheureux lui procurait la victoire" :start 1047 :end 1407) (sentence :text "Il n’en
reste que la crypte où Théodore a dû vous faire descendre, puisque
Gilbert brûla le reste" :start 1408 :end 1506) (sentence :text "Ensuite il défit l’infortuné Charles avec
l’aide de Guillaume Le Conquérant (le curé prononçait Guilôme), ce qui
fait que beaucoup d’Anglais viennent pour visiter" :start 1507 :end 1670) (sentence :text "Mais il ne semble
pas avoir su se concilier la sympathie des habitants de Combray, car
ceux-ci se ruèrent sur lui à la sortie de la messe et lui tranchèrent
la tête" :start 1671 :end 1836) (sentence :text "Du reste Théodore prête un petit livre qui donne les
explications" :start 1837 :end 1903)
 ))