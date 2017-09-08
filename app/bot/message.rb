include Facebook::Messenger

Bot.on :message do |input|
  input.typing_on

  api_ai_response = ApiAi::RequestSender.new(session_id: input.sender['id'], message: input.text).get
  parsed_response = ApiAi::ResponseParser.new(api_ai_response).call
  output          = ApiAi::OutputGenerator.new(parsed_response).call

  input.reply(output)
end