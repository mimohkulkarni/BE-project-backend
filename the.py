from Database import Database
from Thesaurus import Thesaurus

database = Database()
thesaurus = Thesaurus()
thesaurus.load("th_english.dat")
database.set_thesaurus(thesaurus)
database.load("sample3.sql")
thesaurus.load("th_english.dat")
for (i, item) in enumerate(input_word_list):
    synonyms = thesaurus.get_synonyms_of_a_word(item)
    for synonym in synonyms:
        print(synonym)
