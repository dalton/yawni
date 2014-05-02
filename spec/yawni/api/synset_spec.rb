require_relative '../../../lib/yawni'

describe "synsets" do
  Yawni.load
  WN = Yawni::WordNet.getInstance

  it 'should search glosses' do
    str = Rjb::import('java.lang.String')  # import String class into the varibale 'str'
    instance = str.new_with_sig('Ljava.lang.String;', 'sentence')
    sentence = WN.lookupWord(instance, Yawni::POS.NOUN).getSense(1)
    sentenceGloss = "a string of words satisfying the grammatical rules of a language; \"he always spoke in grammatical sentences\"";
    sentenceGloss.should == sentence.getSynset.getGloss.to_s
  end
end