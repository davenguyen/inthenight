module LunarShell
  module Satellites
    class YodaismController < LunarShell::SatellitesController
      def run
        @quote = quotes[quote_number]
      end

      private

      def quote_number
        parameters? ? parameters.first.to_i :  random_quote
      end

      def quotes
        [
          {
            quote: 'Adventure. Heh! Excitement. Heh! A Jedi craves not these things.',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'You must unlearn what you have learned.',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'Size matters not. Look at me. Judge me by my size, do you?',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'For my ally is the Force, and a powerful ally it is.',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'That is why you fail.',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'Do... or do not. There is no try.',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'Control, control, you must learn control!',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'A Jedi uses the Force for knowledge and defense, NEVER for attack.',
            film: 'The Empire Strikes Back'
          },
          {
            quote: 'No more training do you require.',
            film: 'Return of the Jedi'
          },
          {
            quote: 'Strong am I with the Force, but not that strong.',
            film: 'Return of the Jedi'
          },
          {
            quote: 'When nine hundred years old *you* reach, look as good *you* will not, hmm?',
            film: 'Return of the Jedi'
          },
          {
            quote: 'Remember, a Jedi\'s strength flows from the Force. But beware. Anger, fear, aggression. The dark side are they. Once you start down the dark path, forever will it dominate your destiny.',
            film: 'Return of the Jedi'
          }
        ]
      end

      def random_quote
        rand(quotes.count)
      end
    end
  end
end
