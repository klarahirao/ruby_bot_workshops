module ApiAi
  class ResponseParser
    def call
      { action: response[:result][:action].to_sym,
        action_incomplete: response[:result][:actionIncomplete],
        output: response[:result][:fulfillment][:speech],
        parameters: response[:result][:parameters],
        psid: response[:sessionId] }
    end

    private

    attr_reader :response

    def initialize(response)
      @response = response
    end
  end
end
