# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/pubsub/v1/pubsub.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.pubsub.v1.MessageStoragePolicy" do
    repeated :allowed_persistence_regions, :string, 1
  end
  add_message "google.pubsub.v1.Topic" do
    optional :name, :string, 1
    map :labels, :string, :string, 2
    optional :message_storage_policy, :message, 3, "google.pubsub.v1.MessageStoragePolicy"
  end
  add_message "google.pubsub.v1.PubsubMessage" do
    optional :data, :bytes, 1
    map :attributes, :string, :string, 2
    optional :message_id, :string, 3
    optional :publish_time, :message, 4, "google.protobuf.Timestamp"
  end
  add_message "google.pubsub.v1.GetTopicRequest" do
    optional :topic, :string, 1
  end
  add_message "google.pubsub.v1.UpdateTopicRequest" do
    optional :topic, :message, 1, "google.pubsub.v1.Topic"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.pubsub.v1.PublishRequest" do
    optional :topic, :string, 1
    repeated :messages, :message, 2, "google.pubsub.v1.PubsubMessage"
  end
  add_message "google.pubsub.v1.PublishResponse" do
    repeated :message_ids, :string, 1
  end
  add_message "google.pubsub.v1.ListTopicsRequest" do
    optional :project, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.pubsub.v1.ListTopicsResponse" do
    repeated :topics, :message, 1, "google.pubsub.v1.Topic"
    optional :next_page_token, :string, 2
  end
  add_message "google.pubsub.v1.ListTopicSubscriptionsRequest" do
    optional :topic, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.pubsub.v1.ListTopicSubscriptionsResponse" do
    repeated :subscriptions, :string, 1
    optional :next_page_token, :string, 2
  end
  add_message "google.pubsub.v1.ListTopicSnapshotsRequest" do
    optional :topic, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.pubsub.v1.ListTopicSnapshotsResponse" do
    repeated :snapshots, :string, 1
    optional :next_page_token, :string, 2
  end
  add_message "google.pubsub.v1.DeleteTopicRequest" do
    optional :topic, :string, 1
  end
  add_message "google.pubsub.v1.Subscription" do
    optional :name, :string, 1
    optional :topic, :string, 2
    optional :push_config, :message, 4, "google.pubsub.v1.PushConfig"
    optional :ack_deadline_seconds, :int32, 5
    optional :retain_acked_messages, :bool, 7
    optional :message_retention_duration, :message, 8, "google.protobuf.Duration"
    map :labels, :string, :string, 9
    optional :expiration_policy, :message, 11, "google.pubsub.v1.ExpirationPolicy"
  end
  add_message "google.pubsub.v1.ExpirationPolicy" do
    optional :ttl, :message, 1, "google.protobuf.Duration"
  end
  add_message "google.pubsub.v1.PushConfig" do
    optional :push_endpoint, :string, 1
    map :attributes, :string, :string, 2
  end
  add_message "google.pubsub.v1.ReceivedMessage" do
    optional :ack_id, :string, 1
    optional :message, :message, 2, "google.pubsub.v1.PubsubMessage"
  end
  add_message "google.pubsub.v1.GetSubscriptionRequest" do
    optional :subscription, :string, 1
  end
  add_message "google.pubsub.v1.UpdateSubscriptionRequest" do
    optional :subscription, :message, 1, "google.pubsub.v1.Subscription"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.pubsub.v1.ListSubscriptionsRequest" do
    optional :project, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.pubsub.v1.ListSubscriptionsResponse" do
    repeated :subscriptions, :message, 1, "google.pubsub.v1.Subscription"
    optional :next_page_token, :string, 2
  end
  add_message "google.pubsub.v1.DeleteSubscriptionRequest" do
    optional :subscription, :string, 1
  end
  add_message "google.pubsub.v1.ModifyPushConfigRequest" do
    optional :subscription, :string, 1
    optional :push_config, :message, 2, "google.pubsub.v1.PushConfig"
  end
  add_message "google.pubsub.v1.PullRequest" do
    optional :subscription, :string, 1
    optional :return_immediately, :bool, 2
    optional :max_messages, :int32, 3
  end
  add_message "google.pubsub.v1.PullResponse" do
    repeated :received_messages, :message, 1, "google.pubsub.v1.ReceivedMessage"
  end
  add_message "google.pubsub.v1.ModifyAckDeadlineRequest" do
    optional :subscription, :string, 1
    repeated :ack_ids, :string, 4
    optional :ack_deadline_seconds, :int32, 3
  end
  add_message "google.pubsub.v1.AcknowledgeRequest" do
    optional :subscription, :string, 1
    repeated :ack_ids, :string, 2
  end
  add_message "google.pubsub.v1.StreamingPullRequest" do
    optional :subscription, :string, 1
    repeated :ack_ids, :string, 2
    repeated :modify_deadline_seconds, :int32, 3
    repeated :modify_deadline_ack_ids, :string, 4
    optional :stream_ack_deadline_seconds, :int32, 5
  end
  add_message "google.pubsub.v1.StreamingPullResponse" do
    repeated :received_messages, :message, 1, "google.pubsub.v1.ReceivedMessage"
  end
  add_message "google.pubsub.v1.CreateSnapshotRequest" do
    optional :name, :string, 1
    optional :subscription, :string, 2
    map :labels, :string, :string, 3
  end
  add_message "google.pubsub.v1.UpdateSnapshotRequest" do
    optional :snapshot, :message, 1, "google.pubsub.v1.Snapshot"
    optional :update_mask, :message, 2, "google.protobuf.FieldMask"
  end
  add_message "google.pubsub.v1.Snapshot" do
    optional :name, :string, 1
    optional :topic, :string, 2
    optional :expire_time, :message, 3, "google.protobuf.Timestamp"
    map :labels, :string, :string, 4
  end
  add_message "google.pubsub.v1.GetSnapshotRequest" do
    optional :snapshot, :string, 1
  end
  add_message "google.pubsub.v1.ListSnapshotsRequest" do
    optional :project, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
  end
  add_message "google.pubsub.v1.ListSnapshotsResponse" do
    repeated :snapshots, :message, 1, "google.pubsub.v1.Snapshot"
    optional :next_page_token, :string, 2
  end
  add_message "google.pubsub.v1.DeleteSnapshotRequest" do
    optional :snapshot, :string, 1
  end
  add_message "google.pubsub.v1.SeekRequest" do
    optional :subscription, :string, 1
    oneof :target do
      optional :time, :message, 2, "google.protobuf.Timestamp"
      optional :snapshot, :string, 3
    end
  end
  add_message "google.pubsub.v1.SeekResponse" do
  end
end

module Google
  module Pubsub
    module V1
      MessageStoragePolicy = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.MessageStoragePolicy").msgclass
      Topic = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.Topic").msgclass
      PubsubMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.PubsubMessage").msgclass
      GetTopicRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.GetTopicRequest").msgclass
      UpdateTopicRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.UpdateTopicRequest").msgclass
      PublishRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.PublishRequest").msgclass
      PublishResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.PublishResponse").msgclass
      ListTopicsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListTopicsRequest").msgclass
      ListTopicsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListTopicsResponse").msgclass
      ListTopicSubscriptionsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListTopicSubscriptionsRequest").msgclass
      ListTopicSubscriptionsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListTopicSubscriptionsResponse").msgclass
      ListTopicSnapshotsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListTopicSnapshotsRequest").msgclass
      ListTopicSnapshotsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListTopicSnapshotsResponse").msgclass
      DeleteTopicRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.DeleteTopicRequest").msgclass
      Subscription = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.Subscription").msgclass
      ExpirationPolicy = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ExpirationPolicy").msgclass
      PushConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.PushConfig").msgclass
      ReceivedMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ReceivedMessage").msgclass
      GetSubscriptionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.GetSubscriptionRequest").msgclass
      UpdateSubscriptionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.UpdateSubscriptionRequest").msgclass
      ListSubscriptionsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListSubscriptionsRequest").msgclass
      ListSubscriptionsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListSubscriptionsResponse").msgclass
      DeleteSubscriptionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.DeleteSubscriptionRequest").msgclass
      ModifyPushConfigRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ModifyPushConfigRequest").msgclass
      PullRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.PullRequest").msgclass
      PullResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.PullResponse").msgclass
      ModifyAckDeadlineRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ModifyAckDeadlineRequest").msgclass
      AcknowledgeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.AcknowledgeRequest").msgclass
      StreamingPullRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.StreamingPullRequest").msgclass
      StreamingPullResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.StreamingPullResponse").msgclass
      CreateSnapshotRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.CreateSnapshotRequest").msgclass
      UpdateSnapshotRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.UpdateSnapshotRequest").msgclass
      Snapshot = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.Snapshot").msgclass
      GetSnapshotRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.GetSnapshotRequest").msgclass
      ListSnapshotsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListSnapshotsRequest").msgclass
      ListSnapshotsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.ListSnapshotsResponse").msgclass
      DeleteSnapshotRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.DeleteSnapshotRequest").msgclass
      SeekRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.SeekRequest").msgclass
      SeekResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.pubsub.v1.SeekResponse").msgclass
    end
  end
end
