# xtitle/AI
st. schwarz
2026-04-04



















<!--
::: {.content-visible when-format="html"}
&#10;load pdf [here](.pdf)
&#10;:::
-->

# index

# abstract B: idee 2

language is developing and changing. there are many factors that
influence language change, but i want to focus on one that may become
relevant in todays language development: the change of language by
constant and increasing use of AI tools that :communicate: with us as
partners one may consider :real: or human-equivalent.

## inspiration

now what are we experiencing if communicating with an artificial
intelligence? first comes to mind the seemingly :natural language:
adressed to us. one may feel as if talking to a human when asking
questions and getting a response. studies prove that a significant
amount of us show behaviour towards the AI that one would expect humans
show only towards each other. that leads to the first question:

> if we hold the AI as a human communication partner, could its
> behaviour towards us (here: their language) influence the way we
> talk/act viceversa? can people learn from an AI *how* to talk and what
> would they learn in this case? what is the language *taught* here
> specifically? do we adapt to patterns or linguistic markers common for
> *AI speech*?

## AI speech: wtf

we can assume as common ground that the language used (here: output) by
LLMs seems rather neutral, deprived of features deviating from the norm.
its rather easy to understand, doesnt contain irony or sarcasm very
often nor hyperbolic sentence structures (if not explicitly prompted)
and could be very well used in a textbook for learners. it may be
considered *universal* in aspects of transferability into other
languages. it uses to not contain any specific vocabular or non-standard
phrases. the syntax and grammar seems to follow the corresponding rules
as the models are trained on large corpora of natural language. if we
would (and we will do that) analyse a corpus of LLM outputs we very
probably will find that in any feature it complies with the average
feature matrix of any language compared. so if one language goes like
SPO with having an average wordcount of 5wds/phrase and an average
wordlength of 5 chars then the LLM certainly will show the same features
for output in that language. no magic so far.

But: what if learners or people with deficient language skills begin to
sync their output with the artificial language in their chatverlauf?
simple like: beginning a response firstly with an appreciation of the
:very interesting question: whatever the other may have asked? we’re
already heading that way…

There may also be tiny (oberlehrerhafte) standardisations of our own
speech peculiarities (idiosyncrasies) we are confronted with which we
are kind of nudged to relativate if always sending them into a black
hole.

## methods

first to do would be to create (or search for) a corpus of AI generated
output. to use an existing corpus would prevent biasing which on the
other hand could be interesting to explore i.e. we could by building
(generating) a corpus ourselves on the basis of certain dedicated
prompts[^1] force the AI to generate phenomena of interest to our
research question. where we get into medias res…

## focusing questions

1.  does a generative AI generally produces output that is in any
    aspects of interest for linguistic research?
2.  how will users prime the output?
3.  how are users adapting their own production to the output?
    1.  is there any consistency concerning this adaptation?
    2.  is there then societal adaptation of AI produced language?
    3.  what are the rules (historic evidence) for adaptation?

## going deeper

### corpus creation

as proposed in
<a href="#sec-methods" class="quarto-xref">Section 2.3</a> a secure way
to building a corpus of AI speech - which we need to explore phenomena -
is to archive LLM output to dedicated prompts. we will use an open
source model provided with llama which can run on a local machine and is
adressed via an API by script.

#### constraints

we will form prompts following these directives lead by our research
question: 1. correction of mistakes to devise actual “knowledge” of
model concerning standardisation and normative aspects

# capacities

to arrive at a research question, maybe discarding above

## what i would like to…

- AI chat queries analysis
- analyse linguistic knowledge capacities of AIs
- proofread responses, factchecking

## and what i actually **can** do

- statistics
- automated prompting using APIs
- automated response processing
- masked prompt generation

# annotations

the research-question-still-to-develop will orientate on the findings
([Table](qa.qmd#tbl_qa), my annotations) in BSI
([2025](#ref-bsi_wie_2025)) where i see some interesting points although
the source itself may be subject to doubt.

**prompt-linguistics** seems to be a promising keyword in this context,
also Vechta U ([2024](#ref-vechta_u_beyond_2024)) published a CfP[^2] in
that genre for a themenheft which will be published april 2026 titled:
**Themenheft Beyond Prompting?! Sozio-technische Systeme, KI und
Medienbildung in der Post-Digitalität**, edited by Annekatrin Bock, Lina
Franken, Franco Rau, Jessica Kühn und Ada Fehr.

## from here…

…we come to a maybe more feasable to explore topic within the research
of semantic, syntactic and pragmatic features of speech of AI users that
is affected by that use. in the not citable BSI
([2025](#ref-bsi_wie_2025)) a focus lies on how users language changes
depending on their making “heavy use” of AI tools. there seems to be an
influence of the affordances to create successful/optimized prompts for
best results on a. the language used in that prompts and furthermore b.
the language beyond that usecase say the users everyday life. which is
exactly what we were looking for, and from here, we can dig into corpora
to find manifestations of features the study discovered as
e.g. simplification of complex syntactic structures in favour of
reference based patterns.

### Q

#### characteristics of the optimal prompt

1)  

- can we trace these in corpora?
- findings:
  - no significant accuracy increase with simplification or lower
    perplexity score
  - no accuracy increase with more frequent synonymes
- ie: there doesnt seem to be a generally “optimal language” to
  prompting
  - may not seek for structural features really
- contradictory to BSI study and intuitive guess (experience) on
  optimized prompt language

#### Empirical evidence of Large Language Model’s influence on human spoken communication

2)  

- finds significant changes in human spoken communication past GPT onset
- try replication on german language:
  - [preview motivation and preliminary](yakura.html)
  - [preview paper & first results](gemini.html)

# References

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-abrami_german_2022" class="csl-entry">

Abrami, Giuseppe, Mevlüt Bagci, Leon Hammerla, and Alexander Mehler.
2022. “German Parliamentary Corpus (GerParCor).” In *Proceedings of the
Thirteenth Language Resources and Evaluation Conference*, edited by
Nicoletta Calzolari, Frédéric Béchet, Philippe Blache, Khalid Choukri,
Christopher Cieri, Thierry Declerck, Sara Goggi, et al., 1900–1906.
Marseille, France: European Language Resources Association.
<https://aclanthology.org/2022.lrec-1.202/>.

</div>

<div id="ref-aleksic_opinion_2025" class="csl-entry">

Aleksic, Adam. 2025. “Opinion It’s Happening: People Are Starting to
Talk Like ChatGPT.” *The Washington Post*, August.
<https://www.washingtonpost.com/opinions/2025/08/20/chatgpt-claude-chatbots-language/>.

</div>

<div id="ref-noauthor_automatic_nodate" class="csl-entry">

“Automatic Register Identification for the Open Web Using Multilingual
Deep Learning.” n.d. Accessed January 3, 2026.
<https://arxiv.org/html/2406.19892v3>.

</div>

<div id="ref-bates_fitting_2015" class="csl-entry">

Bates, Douglas, Martin Mächler, Ben Bolker, and Steve Walker. 2015.
“Fitting Linear Mixed-Effects Models Using Lme4.” *Journal of
Statistical Software* 67 (1): 1–48.
<https://doi.org/10.18637/jss.v067.i01>.

</div>

<div id="ref-bsi_wie_2025" class="csl-entry">

BSI, Brand Science Institute. 2025. “Wie KI Unsere Sprache Verändert –
Eine Empirische Studie.”
<https://www.bsi.ag/cases/104-case-studie-wie-ki-unsere-sprache-veraendert---eine-empirische-studie.html>.

</div>

<div id="ref-dip_dip_2026" class="csl-entry">

DIP. 2026. “DIP - Bundestagsprotokolle.” Docs. *DIP - API*. Berlin.
<https://dip.bundestag.de/%C3%BCber-dip/hilfe/api#content>.

</div>

<div id="ref-duke_upress_critical_2025" class="csl-entry">

Duke UPress. 2025. “Critical AI.”
<https://www.dukeupress.edu/critical-ai>.

</div>

<div id="ref-flach_collostructions_2021" class="csl-entry">

Flach, Susanne. 2021. “Collostructions: An R Implementation for the
Family of Collostructional Methods. Package Version v.0.2.0.” *GitHub -
Skeptikantin*. <https://github.com/skeptikantin>.

</div>

<div id="ref-fobbe_r_2026" class="csl-entry">

Fobbe, Sean. 2026. “\[R\] Source Code Des ’Corpus Der Plenarprotokolle
Des Deutschen Bundestages’ (CPP-BT-Source).” Zenodo.
<https://doi.org/10.5281/zenodo.18177197>.

</div>

<div id="ref-kalwa_noch_2025" class="csl-entry">

Kalwa, Nina. 2025. “»Noch Steckt KI in Den Kinderschuhen«.” *Zeitschrift
Für Literaturwissenschaft Und Linguistik* 55 (2): 379–405.
<https://doi.org/10.1007/s41244-025-00379-0>.

</div>

<div id="ref-kraus_studie_2025" class="csl-entry">

Krauß, Patrick, and FAU U. 2025. “Studie Zeigt: KI Lernt Sprachregeln
Beim Lesen.” *FAU*.
<https://www.fau.de/2025/11/news/forschung/studie-ki-lernt-sprachregeln-beim-lesen/>.

</div>

<div id="ref-leidinger_language_2023" class="csl-entry">

Leidinger, Alina, Robert van Rooij, and Ekaterina Shutova. 2023. “The
Language of Prompting: What Linguistic Properties Make a Prompt
Successful?” In *Findings of the Association for Computational
Linguistics: EMNLP 2023*, edited by Houda Bouamor, Juan Pino, and Kalika
Bali, 9210–32. Singapore: Association for Computational Linguistics.
<https://doi.org/10.18653/v1/2023.findings-emnlp.618>.

</div>

<div id="ref-milicka_ai_2025" class="csl-entry">

Milička, Jiří, Anna Marklová, and Václav Cvrček. 2025. “AI Brown and AI
Koditex: LLM-Generated Corpora Comparable to Traditional Corpora of
English and Czech Texts.” <https://doi.org/10.48550/arxiv.2509.22996>.

</div>

<div id="ref-ramirez_chatgpt_2025" class="csl-entry">

Ramirez, Vanessa Bates. 2025. “ChatGPT Is Changing the Words We Use in
Conversation.” *Scientific American*.
<https://www.scientificamerican.com/article/chatgpt-is-changing-the-words-we-use-in-conversation/>.

</div>

<div id="ref-ror_ror_2025" class="csl-entry">

ROR, Research Organization Registry. 2025. “ROR Data.” Zenodo.
<https://doi.org/10.5281/zenodo.17953395>.

</div>

<div id="ref-roussel_einsatz_2024" class="csl-entry">

Roussel, Stephanie, and Ayaal Herdam. 2024. “Einsatz von Künstlicher
Intelligenz Im Überarbeitungsprozess von Texten in Der Fremdsprache
Deutsch: Fokus Auf Wortschatz Und Syntax.” *German as a Foreign
Language* 2024 (3): 61–86. <https://hal.science/hal-04999057>.

</div>

<div id="ref-schwarz_this_2026" class="csl-entry">

Schwarz, St. 2026. “This Papers Corpus Build & Evaluation Scripts.”
*GitHub/Esteeschwarz*. Berlin.
<https://github.com/esteeschwarz/SPUND-LX/blob/main/germanic/HA/>.

</div>

<div id="ref-shrivastava_repository-level_2023" class="csl-entry">

Shrivastava, Disha, Hugo Larochelle, and Daniel Tarlow. 2023.
“Repository-Level Prompt Generation for Large Language Models of Code.”
In *Proceedings of the 40th International Conference on Machine
Learning*, 202:31693–715. ICML’23. Honolulu, Hawaii, USA: JMLR.org.

</div>

<div id="ref-vechta_u_beyond_2024" class="csl-entry">

Vechta U. 2024. “Beyond Prompting.”
<https://www.uni-vechta.de/beyondprompting/news/details/projekt-beyond-prompting-erfolgreiche-drittmitteleinwerbung>.

</div>

<div id="ref-wikipedia_google_2026" class="csl-entry">

Wikipedia, and Google. 2026. “Google Gemini.” *Wikipedia*.
<https://de.wikipedia.org/w/index.php?title=Google_Gemini&oldid=263426206>.

</div>

<div id="ref-wu_corpus-based_2025" class="csl-entry">

Wu, JinLiang. 2025. “A Corpus-Based Multidimensional Analysis of
Linguistic Features Between Human-Authored and ChatGPT-Generated
Compositions.” *International Journal of Linguistics, Literature and
Translation* 8 (5): 102–10.
<https://doi.org/10.32996/ijllt.2025.8.5.10>.

</div>

<div id="ref-yakura_empirical_2025" class="csl-entry">

Yakura, Hiromu, Ezequiel Lopez-Lopez, Levin Brinkmann, Ignacio Serna,
Prateek Gupta, Ivan Soraperra, and Iyad Rahwan. 2025. “Empirical
Evidence of Large Language Model’s Influence on Human Spoken
Communication.” arXiv. <https://doi.org/10.48550/arXiv.2409.01754>.

</div>

</div>

[^1]: which could very well be adapted to our research question

[^2]: for which i in the moment dont find a reliable source anymore so
    its not cited.
