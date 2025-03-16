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
 :text "L’année précédente, dans une soirée, il avait entendu une œuvre
musicale exécutée au piano et au violon. D’abord, il n’avait goûté que
la qualité matérielle des sons sécrétés par les instruments. Et
ç’avait déjà été un grand plaisir quand au-dessous de la petite ligne
du violon mince, résistante, dense et directrice, il avait vu tout
d’un coup chercher à s’élever en un clapotement liquide, la masse de
la partie de piano, multiforme, indivise, plane et entrechoquée comme
la mauve agitation des flots que charme et bémolise le clair de lune.
Mais à un moment donné, sans pouvoir nettement distinguer un contour,
donner un nom à ce qui lui plaisait, charmé tout d’un coup, il avait
cherché à recueillir la phrase ou l’harmonie--il ne savait lui-même--qui
passait et qui lui avait ouvert plus largement l’âme, comme certaines
odeurs de roses circulant dans l’air humide du soir ont la propriété
de dilater nos narines. Peut-être est-ce parce qu’il ne savait pas la
musique qu’il avait pu éprouver une impression aussi confuse, une de
ces impressions qui sont peut-être pourtant les seules purement
musicales, inattendues, entièrement originales, irréductibles à tout
autre ordre d’impressions. Une impression de ce genre pendant un
instant, est pour ainsi dire sine materia. Sans doute les notes que
nous entendons alors, tendent déjà, selon leur hauteur et leur
quantité, à couvrir devant nos yeux des surfaces de dimensions
variées, à tracer des arabesques, à nous donner des sensations de
largeur, de ténuité, de stabilité, de caprice. Mais les notes sont
évanouies avant que ces sensations soient assez formées en nous pour
ne pas être submergées par celles qu’éveillent déjà les notes
suivantes ou même simultanées. Et cette impression continuerait à
envelopper de sa liquidité et de son «fondu» les motifs qui par
instants en émergent, à peine discernables, pour plonger aussitôt et
disparaître, connus seulement par le plaisir particulier qu’ils
donnent, impossibles à décrire, à se rappeler, à nommer,
ineffables,--si la mémoire, comme un ouvrier qui travaille à établir
des fondations durables au milieu des flots, en fabriquant pour nous
des fac-similés de ces phrases fugitives, ne nous permettait de les
comparer à celles qui leur succèdent et de les différencier. Ainsi à
peine la sensation délicieuse que Swann avait ressentie était-elle
expirée, que sa mémoire lui en avait fourni séance tenante une
transcription sommaire et provisoire, mais sur laquelle il avait jeté
les yeux tandis que le morceau continuait, si bien que quand la même
impression était tout d’un coup revenue, elle n’était déjà plus
insaisissable. Il s’en représentait l’étendue, les groupements
symétriques, la graphie, la valeur expressive; il avait devant lui
cette chose qui n’est plus de la musique pure, qui est du dessin, de
l’architecture, de la pensée, et qui permet de se rappeler la musique.
Cette fois il avait distingué nettement une phrase s’élevant pendant
quelques instants au-dessus des ondes sonores. Elle lui avait proposé
aussitôt des voluptés particulières, dont il n’avait jamais eu l’idée
avant de l’entendre, dont il sentait que rien autre qu’elle ne
pourrait les lui faire connaître, et il avait éprouvé pour elle comme
un amour inconnu."
 :tokens 516
 :processed-at "2025-03-16T02:18:14.277432"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 545 :end 549) (entity :text "Sans" :label "ORG" :start 1276 :end 1280) (entity :text "Mais" :label "ORG" :start 1540 :end 1544) (entity :text "Swann" :label "ORG" :start 2320 :end 2325) (entity :text "Cette" :label "ORG" :start 2889 :end 2894) (entity :text "Elle" :label "ORG" :start 3005 :end 3009)
 )
 :sentences (list
  (sentence :text "L’année précédente, dans une soirée, il avait entendu une œuvre
musicale exécutée au piano et au violon" :start 0 :end 103) (sentence :text "D’abord, il n’avait goûté que
la qualité matérielle des sons sécrétés par les instruments" :start 104 :end 194) (sentence :text "Et
ç’avait déjà été un grand plaisir quand au-dessous de la petite ligne
du violon mince, résistante, dense et directrice, il avait vu tout
d’un coup chercher à s’élever en un clapotement liquide, la masse de
la partie de piano, multiforme, indivise, plane et entrechoquée comme
la mauve agitation des flots que charme et bémolise le clair de lune" :start 195 :end 543) (sentence :text "Mais à un moment donné, sans pouvoir nettement distinguer un contour,
donner un nom à ce qui lui plaisait, charmé tout d’un coup, il avait
cherché à recueillir la phrase ou l’harmonie--il ne savait lui-même--qui
passait et qui lui avait ouvert plus largement l’âme, comme certaines
odeurs de roses circulant dans l’air humide du soir ont la propriété
de dilater nos narines" :start 544 :end 918) (sentence :text "Peut-être est-ce parce qu’il ne savait pas la
musique qu’il avait pu éprouver une impression aussi confuse, une de
ces impressions qui sont peut-être pourtant les seules purement
musicales, inattendues, entièrement originales, irréductibles à tout
autre ordre d’impressions" :start 919 :end 1193) (sentence :text "Une impression de ce genre pendant un
instant, est pour ainsi dire sine materia" :start 1194 :end 1274) (sentence :text "Sans doute les notes que
nous entendons alors, tendent déjà, selon leur hauteur et leur
quantité, à couvrir devant nos yeux des surfaces de dimensions
variées, à tracer des arabesques, à nous donner des sensations de
largeur, de ténuité, de stabilité, de caprice" :start 1275 :end 1538) (sentence :text "Mais les notes sont
évanouies avant que ces sensations soient assez formées en nous pour
ne pas être submergées par celles qu’éveillent déjà les notes
suivantes ou même simultanées" :start 1539 :end 1720) (sentence :text "Et cette impression continuerait à
envelopper de sa liquidité et de son «fondu» les motifs qui par
instants en émergent, à peine discernables, pour plonger aussitôt et
disparaître, connus seulement par le plaisir particulier qu’ils
donnent, impossibles à décrire, à se rappeler, à nommer,
ineffables,--si la mémoire, comme un ouvrier qui travaille à établir
des fondations durables au milieu des flots, en fabriquant pour nous
des fac-similés de ces phrases fugitives, ne nous permettait de les
comparer à celles qui leur succèdent et de les différencier" :start 1721 :end 2276) (sentence :text "Ainsi à
peine la sensation délicieuse que Swann avait ressentie était-elle
expirée, que sa mémoire lui en avait fourni séance tenante une
transcription sommaire et provisoire, mais sur laquelle il avait jeté
les yeux tandis que le morceau continuait, si bien que quand la même
impression était tout d’un coup revenue, elle n’était déjà plus
insaisissable" :start 2277 :end 2632) (sentence :text "Il s’en représentait l’étendue, les groupements
symétriques, la graphie, la valeur expressive; il avait devant lui
cette chose qui n’est plus de la musique pure, qui est du dessin, de
l’architecture, de la pensée, et qui permet de se rappeler la musique" :start 2633 :end 2887) (sentence :text "Cette fois il avait distingué nettement une phrase s’élevant pendant
quelques instants au-dessus des ondes sonores" :start 2888 :end 3003) (sentence :text "Elle lui avait proposé
aussitôt des voluptés particulières, dont il n’avait jamais eu l’idée
avant de l’entendre, dont il sentait que rien autre qu’elle ne
pourrait les lui faire connaître, et il avait éprouvé pour elle comme
un amour inconnu" :start 3004 :end 3247)
 ))