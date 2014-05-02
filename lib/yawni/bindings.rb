module Yawni
  module Bindings

    # Require configuration.
    #require 'yawni/config'

    # ############################ #
    # BindIt Configuration Options #
    # ############################ #

    require 'bind-it'
    extend BindIt::Binding

    # Load the JVM with a minimum heap size of 512MB,
    # and a maximum heap size of 1024MB.
    self.jvm_args = ['-Xms512M', '-Xmx1024M']

    # Turn logging off by default.
    self.log_file = nil

    # Default JARs to load.
    self.default_jars = [
        'guava-15.0.jar',     # Last version that has com.google.common.io.Closeables.closeQuietly
        'slf4j-api-1.7.7.jar',
        'slf4j-nop-1.7.7.jar',
        'yawni-wordnet-api-2.0.0-SNAPSHOT.jar',
        'yawni-wordnet-data30-2.0.0-SNAPSHOT.jar'
    ]

    # Default namespace.
    #self.default_namespace = 'org.yawni.wordnet'

    # Default classes.
    self.default_classes = [
        # OpenNLP classes.
        ['LoggerFactory', 'org.slf4j'],
        ['Command', 'org.yawni.wordnet'],
        ['FileManager', 'org.yawni.wordnet'],
        ['FileManagerInterface', 'org.yawni.wordnet'],
        ['GetIndex', 'org.yawni.wordnet'],
        ['GlossAndExampleUtils', 'org.yawni.wordnet'],
        ['LexicalRelation', 'org.yawni.wordnet'],
        ['Lexname', 'org.yawni.wordnet'],
        ['MorphosemanticRelation', 'org.yawni.wordnet'],
        ['Morphy', 'org.yawni.wordnet'],
        ['POS', 'org.yawni.wordnet'],
        ['Relation', 'org.yawni.wordnet'],
        ['RelationArgument', 'org.yawni.wordnet'],
        ['RelationType', 'org.yawni.wordnet'],
        ['SemanticRelation', 'org.yawni.wordnet'],
        ['Synset', 'org.yawni.wordnet'],
        ['SynsetToLemma', 'org.yawni.wordnet'],
        ['TeleologicalRelation', 'org.yawni.wordnet'],
        ['Word', 'org.yawni.wordnet'],
        ['WordNet', 'org.yawni.wordnet'],
        ['WordNetInterface', 'org.yawni.wordnet'],
        ['WordNetLexicalComparator', 'org.yawni.wordnet'],
        ['WordSense', 'org.yawni.wordnet'],
        ['WordToLowercasedLemma', 'org.yawni.wordnet'],

        # Generic Java classes.
        ['FileInputStream', 'java.io'],
        ['String', 'java.lang'],
        ['CharSequence', 'java.lang'],
        ['ArrayList', 'java.util']
    ]

    # Add in Rjb workarounds.
    unless RUBY_PLATFORM =~ /java/
    end

    # ############################ #
    #   Yawni bindings proper    #
    # ############################ #


    def self.default_path
      File.dirname(__FILE__) + '/../../bin/'
    end

    # The path in which to look for JAR files, with
    # a trailing slash (default is gem's bin folder).
    self.jar_path = self.default_path

  end
end