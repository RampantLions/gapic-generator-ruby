# frozen_string_literal: true

# The MIT License (MIT)
#
# Copyright <YEAR> <COPYRIGHT HOLDER>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Showcase
    module V1beta1
      module Messaging
        # Path helper methods for the Messaging API.
        module Paths
          ##
          # Create a fully-qualified Blurb resource string.
          #
          # @overload blurb_path(room_id:, blurb_id:)
          #   The resource will be in the following format:
          #
          #   `rooms/{room_id}/blurbs/{blurb_id}`
          #
          #   @param room_id [String]
          #   @param blurb_id [String]
          #
          # @overload blurb_path(user_id:, blurb_id:)
          #   The resource will be in the following format:
          #
          #   `user/{user_id}/profile/blurbs/{blurb_id}`
          #
          #   @param user_id [String]
          #   @param blurb_id [String]
          #
          # @return [String]
          def blurb_path **args
            resources = {
              "blurb_id:room_id" => (proc do |room_id:, blurb_id:|
                raise ArgumentError, "room_id cannot contain /" if room_id.to_s.include? "/"

                "rooms/#{room_id}/blurbs/#{blurb_id}"
              end),
              "blurb_id:user_id" => (proc do |user_id:, blurb_id:|
                raise ArgumentError, "user_id cannot contain /" if user_id.to_s.include? "/"

                "user/#{user_id}/profile/blurbs/#{blurb_id}"
              end)
            }

            resource = resources[args.keys.sort.join(":")]
            raise ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
            resource.call(**args)
          end

          ##
          # Create a fully-qualified Room resource string.
          #
          # The resource will be in the following format:
          #
          # `rooms/{room_id}`
          #
          # @param room_id [String]
          #
          # @return [String]
          def room_path room_id:
            "rooms/#{room_id}"
          end

          ##
          # Create a fully-qualified User resource string.
          #
          # The resource will be in the following format:
          #
          # `users/{user_id}`
          #
          # @param user_id [String]
          #
          # @return [String]
          def user_path user_id:
            "users/#{user_id}"
          end

          extend self
        end
      end
    end
  end
end
