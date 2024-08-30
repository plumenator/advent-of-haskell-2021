input_data = ['auto', 'didactic', 'graph', 'mate', 'chrome', 'centric', 'complete', 'echolalia', 'encoder', 'biography']

result_data = 'auto :: autodidactic :: autograph :: automate :: autochrome :: autocentric :: autocomplete :: autoecholalia :: autoencoder :: autobiography'

def make_word_groups(vocab_words):
    """
    Returns a string with the applied prefix to words.
    
    :param vocab_words: list of vocabulary words with a prefix.
    :return: str of prefix followed by vocabulary words with
             prefix applied, separated by ' :: '.

    This function takes a `vocab_words` list and returns a string
    with the prefix  and the words with prefix applied, separated
     by ' :: '.
    """
    
    prefixed = " :: " + vocab_words[0]
    listToStr = prefixed.join(vocab_words)
    return listToStr

print(result_data == make_word_groups(input_data))