module ApiAi
  class OutputGenerator
    ACTION_PERFORMERS = {}.freeze

    def call
      return { text: response[:output] } unless action_performer

      action_performer.new(response: response).call
    end

    private

    attr_reader :response, :action_performer

    def initialize(response)
      @response = response
      @action_performer = ACTION_PERFORMERS[response[:action]]
    end
  end
end
