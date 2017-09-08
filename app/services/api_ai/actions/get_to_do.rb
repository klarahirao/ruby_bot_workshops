module ApiAi
  module Actions
    class GetToDo
      def call
        { text: user.to_do_list }
      end

      private

      attr_accessor :user

      def initialize(response)
        @user = User.find_by(psid: response[:psid])
      end
    end
  end
end
