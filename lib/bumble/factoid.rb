module Bumble
  module Factoid
    class Factoid
      def initialize fmt, blk
        @fmt = fmt
        @blk = blk
      end

      def render m
        @fmt % @blk.call(m)
      end
    end

    class << self
      attr_reader :factoids

      def Factoid(*a)
        Factoid.new(*a)
      end
    end

    @factoids = [
      Factoid("\e[1mYour mom\e[0m.", ->(_){}),
      Factoid("\e[1mTraveled %.3f miles\e[0m, if you were a photon. (That's \e[1m%.3f times\e[0m around the Earth.)",
                ->(q) { e = 186282 * q; [e, e / 24901.47] }),
      Factoid("\e[1mEaten %.3f hotdogs\e[0m. If you're really good.",
                ->(q) { [0.387096774 * q] }),
      Factoid("\e[1mFound %.7f%% of Nemo\e[0m.",
                ->(q) { [q / 10566.32] }),
      Factoid("\e[1mEaten %.3f Kit-Kats\e[0m, if you were the whole world's population. (That's \e[1m%.3fg\e[0m of carbs.)",
                ->(q) { [416 * q, 416 * 27 * q] }),
      Factoid("\e[1mMade %.3f large pizzas\e[0m.",
                ->(q) { [q * 0.076589226] }),
      Factoid("\e[1mRacked up $%.2f of US national debt\e[0m. But don't worry, that's happening anyway!",
                ->(q) { [q * 46138.32] }),
      Factoid("Been hit by lightning \e[1m%.3f times\e[0m, if you are planet Earth.",
                ->(q) { [q * 6000] }),
      Factoid("Grown your beard \e[1m%.3f nanometers\e[0m (exactly \e[1m%.3f beard-seconds\e[0m!)",
                ->(q) { [q * 10, q] }),
      Factoid("Lived through \e[1m%.3f\e[0m heartbeats.",
                ->(q) { [q * 80 / 60] }),
      Factoid("Produced \e[1m%d\e[0m new red blood cells. Nice one.",
                ->(q) { [q * 2_500_000] })
    ]

    def self.factoid m
      self.factoids.shuffle[0].render m
    end
  end
end
