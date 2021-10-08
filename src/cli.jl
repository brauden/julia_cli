using TextAnalysis


corpus = Corpus([StringDocument(sent) for sent in ARGS])
update_lexicon!(corpus)

d = dtm(corpus)
tfm = tf_idf(d)
cs = cos_similarity(tfm)
println("Cosine similarity for your sentences is: ")
println(cs)
println("")
println("TF-IDF:")
println(tfm)
