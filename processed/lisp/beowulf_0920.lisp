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
 :text "Le nom de Beuzeval l’avait fait penser à celui d’une autre localité de
cette région, Beuzeville, qui porte uni à celui-là par un trait
d’union, un autre nom, celui de Bréauté, qu’il avait vu souvent sur
les cartes, mais dont pour la première fois il remarquait que c’était
le même que celui de son ami M. de Bréauté dont la lettre anonyme
disait qu’il avait été l’amant d’Odette. Après tout, pour M. de
Bréauté, l’accusation n’était pas invraisemblable; mais en ce qui
concernait Mme Verdurin, il y avait impossibilité. De ce qu’Odette
mentait quelquefois, on ne pouvait conclure qu’elle ne disait jamais
la vérité et dans ces propos qu’elle avait échangés avec Mme Verdurin
et qu’elle avait racontés elle-même à Swann, il avait reconnu ces
plaisanteries inutiles et dangereuses que, par inexpérience de la vie
et ignorance du vice, tiennent des femmes dont ils révèlent
l’innocence, et qui--comme par exemple Odette--sont plus éloignées
qu’aucune d’éprouver une tendresse exaltée pour une autre femme.
Tandis qu’au contraire, l’indignation avec laquelle elle avait
repoussé les soupçons qu’elle avait involontairement fait naître un
instant en lui par son récit, cadrait avec tout ce qu’il savait des
goûts, du tempérament de sa maîtresse. Mais à ce moment, par une de
ces inspirations de jaloux, analogues à celle qui apporte au poète ou
au savant, qui n’a encore qu’une rime ou qu’une observation, l’idée ou
la loi qui leur donnera toute leur puissance, Swann se rappela pour la
première fois une phrase qu’Odette lui avait dite il y avait déjà deux
ans: «Oh! Mme Verdurin, en ce moment il n’y en a que pour moi, je suis
un amour, elle m’embrasse, elle veut que je fasse des courses avec
elle, elle veut que je la tutoie.» Loin de voir alors dans cette
phrase un rapport quelconque avec les absurdes propos destinés à
simuler le vice que lui avait racontés Odette, il l’avait accueillie
comme la preuve d’une chaleureuse amitié. Maintenant voilà que le
souvenir de cette tendresse de Mme Verdurin était venu brusquement
rejoindre le souvenir de sa conversation de mauvais goût. Il ne
pouvait plus les séparer dans son esprit, et les vit mêlées aussi dans
la réalité, la tendresse donnant quelque chose de sérieux et
d’important à ces plaisanteries qui en retour lui faisaient perdre de
son innocence. Il alla chez Odette. Il s’assit loin d’elle. Il n’osait
l’embrasser, ne sachant si en elle, si en lui, c’était l’affection ou
la colère qu’un baiser réveillerait. Il se taisait, il regardait
mourir leur amour. Tout à coup il prit une résolution."
 :tokens 426
 :processed-at "2025-03-16T02:18:14.767093"
 :entities (list
  (entity :text "Beuzeval" :label "ORG" :start 10 :end 18) (entity :text "Beuzeville," :label "ORG" :start 85 :end 96) (entity :text "Bréauté," :label "ORG" :start 167 :end 175) (entity :text "Bréauté" :label "ORG" :start 308 :end 315) (entity :text "Bréauté," :label "ORG" :start 403 :end 411) (entity :text "Verdurin," :label "ORG" :start 484 :end 493) (entity :text "Verdurin" :label "ORG" :start 666 :end 674) (entity :text "Swann," :label "ORG" :start 713 :end 719) (entity :text "Tandis" :label "ORG" :start 1003 :end 1009) (entity :text "Mais" :label "ORG" :start 1241 :end 1245) (entity :text "Swann" :label "ORG" :start 1457 :end 1462) (entity :text "«Oh!" :label "ORG" :start 1558 :end 1562) (entity :text "Verdurin," :label "ORG" :start 1567 :end 1576) (entity :text "Loin" :label "ORG" :start 1726 :end 1730) (entity :text "Odette," :label "ORG" :start 1860 :end 1867) (entity :text "Maintenant" :label "ORG" :start 1932 :end 1942) (entity :text "Verdurin" :label "ORG" :start 1991 :end 1999) (entity :text "Odette." :label "ORG" :start 2317 :end 2324) (entity :text "Tout" :label "ORG" :start 2514 :end 2518)
 )
 :sentences (list
  (sentence :text "Le nom de Beuzeval l’avait fait penser à celui d’une autre localité de
cette région, Beuzeville, qui porte uni à celui-là par un trait
d’union, un autre nom, celui de Bréauté, qu’il avait vu souvent sur
les cartes, mais dont pour la première fois il remarquait que c’était
le même que celui de son ami M" :start 0 :end 303) (sentence :text "de Bréauté dont la lettre anonyme
disait qu’il avait été l’amant d’Odette" :start 304 :end 378) (sentence :text "Après tout, pour M" :start 379 :end 398) (sentence :text "de
Bréauté, l’accusation n’était pas invraisemblable; mais en ce qui
concernait Mme Verdurin, il y avait impossibilité" :start 399 :end 518) (sentence :text "De ce qu’Odette
mentait quelquefois, on ne pouvait conclure qu’elle ne disait jamais
la vérité et dans ces propos qu’elle avait échangés avec Mme Verdurin
et qu’elle avait racontés elle-même à Swann, il avait reconnu ces
plaisanteries inutiles et dangereuses que, par inexpérience de la vie
et ignorance du vice, tiennent des femmes dont ils révèlent
l’innocence, et qui--comme par exemple Odette--sont plus éloignées
qu’aucune d’éprouver une tendresse exaltée pour une autre femme" :start 519 :end 1001) (sentence :text "Tandis qu’au contraire, l’indignation avec laquelle elle avait
repoussé les soupçons qu’elle avait involontairement fait naître un
instant en lui par son récit, cadrait avec tout ce qu’il savait des
goûts, du tempérament de sa maîtresse" :start 1002 :end 1239) (sentence :text "Mais à ce moment, par une de
ces inspirations de jaloux, analogues à celle qui apporte au poète ou
au savant, qui n’a encore qu’une rime ou qu’une observation, l’idée ou
la loi qui leur donnera toute leur puissance, Swann se rappela pour la
première fois une phrase qu’Odette lui avait dite il y avait déjà deux
ans: «Oh! Mme Verdurin, en ce moment il n’y en a que pour moi, je suis
un amour, elle m’embrasse, elle veut que je fasse des courses avec
elle, elle veut que je la tutoie" :start 1240 :end 1723) (sentence :text "» Loin de voir alors dans cette
phrase un rapport quelconque avec les absurdes propos destinés à
simuler le vice que lui avait racontés Odette, il l’avait accueillie
comme la preuve d’une chaleureuse amitié" :start 1724 :end 1930) (sentence :text "Maintenant voilà que le
souvenir de cette tendresse de Mme Verdurin était venu brusquement
rejoindre le souvenir de sa conversation de mauvais goût" :start 1931 :end 2079) (sentence :text "Il ne
pouvait plus les séparer dans son esprit, et les vit mêlées aussi dans
la réalité, la tendresse donnant quelque chose de sérieux et
d’important à ces plaisanteries qui en retour lui faisaient perdre de
son innocence" :start 2080 :end 2302) (sentence :text "Il alla chez Odette" :start 2303 :end 2323) (sentence :text "Il s’assit loin d’elle" :start 2324 :end 2347) (sentence :text "Il n’osait
l’embrasser, ne sachant si en elle, si en lui, c’était l’affection ou
la colère qu’un baiser réveillerait" :start 2348 :end 2465) (sentence :text "Il se taisait, il regardait
mourir leur amour" :start 2466 :end 2512) (sentence :text "Tout à coup il prit une résolution" :start 2513 :end 2548)
 ))