module EasterEggs
  class Search
    class << self
      def perform(query)
        reference = references.find do |_universe, list|
          list.any? { |regex| regex =~ query.downcase }
        end&.first

        return if reference.nil?

        {
          reference: reference,
          message:   EasterEggs::Universe.t(reference)
        }
      end

      private

      def references
        {
          EasterEggs::Universe::STAR_WARS => [
            /star wars/,
            /force awakens/,
            /rogue one/
          ],

          EasterEggs::Universe::MARIO => [
            /super mario/
          ],

          EasterEggs::Universe::BREAKING_BAD => [
            /breaking bad/,
            /walter white/
          ]
        }
      end
    end
  end
end
