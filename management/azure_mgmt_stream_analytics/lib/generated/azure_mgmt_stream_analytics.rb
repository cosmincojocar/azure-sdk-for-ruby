# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_stream_analytics/module_definition'
require 'ms_rest_azure'

module Azure::ARM::StreamAnalytics
  autoload :Operations,                                         'generated/azure_mgmt_stream_analytics/operations.rb'
  autoload :StreamingJobs,                                      'generated/azure_mgmt_stream_analytics/streaming_jobs.rb'
  autoload :Inputs,                                             'generated/azure_mgmt_stream_analytics/inputs.rb'
  autoload :Outputs,                                            'generated/azure_mgmt_stream_analytics/outputs.rb'
  autoload :Transformations,                                    'generated/azure_mgmt_stream_analytics/transformations.rb'
  autoload :Functions,                                          'generated/azure_mgmt_stream_analytics/functions.rb'
  autoload :Subscriptions,                                      'generated/azure_mgmt_stream_analytics/subscriptions.rb'
  autoload :StreamAnalyticsManagementClient,                    'generated/azure_mgmt_stream_analytics/stream_analytics_management_client.rb'

  module Models
    autoload :SubResource,                                        'generated/azure_mgmt_stream_analytics/models/sub_resource.rb'
    autoload :AzureMachineLearningWebServiceInputColumn,          'generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_input_column.rb'
    autoload :Operation,                                          'generated/azure_mgmt_stream_analytics/models/operation.rb'
    autoload :AzureMachineLearningWebServiceInputs,               'generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_inputs.rb'
    autoload :Sku,                                                'generated/azure_mgmt_stream_analytics/models/sku.rb'
    autoload :StorageAccount,                                     'generated/azure_mgmt_stream_analytics/models/storage_account.rb'
    autoload :DiagnosticCondition,                                'generated/azure_mgmt_stream_analytics/models/diagnostic_condition.rb'
    autoload :FunctionBinding,                                    'generated/azure_mgmt_stream_analytics/models/function_binding.rb'
    autoload :InputProperties,                                    'generated/azure_mgmt_stream_analytics/models/input_properties.rb'
    autoload :FunctionOutput,                                     'generated/azure_mgmt_stream_analytics/models/function_output.rb'
    autoload :Diagnostics,                                        'generated/azure_mgmt_stream_analytics/models/diagnostics.rb'
    autoload :OutputDataSource,                                   'generated/azure_mgmt_stream_analytics/models/output_data_source.rb'
    autoload :AzureSqlDatabaseDataSourceProperties,               'generated/azure_mgmt_stream_analytics/models/azure_sql_database_data_source_properties.rb'
    autoload :OutputListResult,                                   'generated/azure_mgmt_stream_analytics/models/output_list_result.rb'
    autoload :InputListResult,                                    'generated/azure_mgmt_stream_analytics/models/input_list_result.rb'
    autoload :ServiceBusDataSourceProperties,                     'generated/azure_mgmt_stream_analytics/models/service_bus_data_source_properties.rb'
    autoload :StreamingJobListResult,                             'generated/azure_mgmt_stream_analytics/models/streaming_job_list_result.rb'
    autoload :FunctionInput,                                      'generated/azure_mgmt_stream_analytics/models/function_input.rb'
    autoload :BlobDataSourceProperties,                           'generated/azure_mgmt_stream_analytics/models/blob_data_source_properties.rb'
    autoload :AzureMachineLearningWebServiceOutputColumn,         'generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_output_column.rb'
    autoload :ReferenceInputDataSource,                           'generated/azure_mgmt_stream_analytics/models/reference_input_data_source.rb'
    autoload :Serialization,                                      'generated/azure_mgmt_stream_analytics/models/serialization.rb'
    autoload :StreamInputDataSource,                              'generated/azure_mgmt_stream_analytics/models/stream_input_data_source.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_stream_analytics/models/error_response.rb'
    autoload :FunctionRetrieveDefaultDefinitionParameters,        'generated/azure_mgmt_stream_analytics/models/function_retrieve_default_definition_parameters.rb'
    autoload :ResourceTestStatus,                                 'generated/azure_mgmt_stream_analytics/models/resource_test_status.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_stream_analytics/models/operation_display.rb'
    autoload :FunctionProperties,                                 'generated/azure_mgmt_stream_analytics/models/function_properties.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_stream_analytics/models/operation_list_result.rb'
    autoload :SubscriptionQuotasListResult,                       'generated/azure_mgmt_stream_analytics/models/subscription_quotas_list_result.rb'
    autoload :StartStreamingJobParameters,                        'generated/azure_mgmt_stream_analytics/models/start_streaming_job_parameters.rb'
    autoload :FunctionListResult,                                 'generated/azure_mgmt_stream_analytics/models/function_list_result.rb'
    autoload :Input,                                              'generated/azure_mgmt_stream_analytics/models/input.rb'
    autoload :Transformation,                                     'generated/azure_mgmt_stream_analytics/models/transformation.rb'
    autoload :Output,                                             'generated/azure_mgmt_stream_analytics/models/output.rb'
    autoload :Function,                                           'generated/azure_mgmt_stream_analytics/models/function.rb'
    autoload :StreamingJob,                                       'generated/azure_mgmt_stream_analytics/models/streaming_job.rb'
    autoload :JavaScriptFunctionBinding,                          'generated/azure_mgmt_stream_analytics/models/java_script_function_binding.rb'
    autoload :AzureMachineLearningWebServiceFunctionBinding,      'generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_function_binding.rb'
    autoload :ScalarFunctionProperties,                           'generated/azure_mgmt_stream_analytics/models/scalar_function_properties.rb'
    autoload :JavaScriptFunctionRetrieveDefaultDefinitionParameters, 'generated/azure_mgmt_stream_analytics/models/java_script_function_retrieve_default_definition_parameters.rb'
    autoload :AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters, 'generated/azure_mgmt_stream_analytics/models/azure_machine_learning_web_service_function_retrieve_default_definition_parameters.rb'
    autoload :AvroSerialization,                                  'generated/azure_mgmt_stream_analytics/models/avro_serialization.rb'
    autoload :JsonSerialization,                                  'generated/azure_mgmt_stream_analytics/models/json_serialization.rb'
    autoload :CsvSerialization,                                   'generated/azure_mgmt_stream_analytics/models/csv_serialization.rb'
    autoload :EventHubDataSourceProperties,                       'generated/azure_mgmt_stream_analytics/models/event_hub_data_source_properties.rb'
    autoload :ServiceBusTopicOutputDataSource,                    'generated/azure_mgmt_stream_analytics/models/service_bus_topic_output_data_source.rb'
    autoload :ServiceBusQueueOutputDataSource,                    'generated/azure_mgmt_stream_analytics/models/service_bus_queue_output_data_source.rb'
    autoload :DocumentDbOutputDataSource,                         'generated/azure_mgmt_stream_analytics/models/document_db_output_data_source.rb'
    autoload :AzureSqlDatabaseOutputDataSource,                   'generated/azure_mgmt_stream_analytics/models/azure_sql_database_output_data_source.rb'
    autoload :EventHubOutputDataSource,                           'generated/azure_mgmt_stream_analytics/models/event_hub_output_data_source.rb'
    autoload :AzureTableOutputDataSource,                         'generated/azure_mgmt_stream_analytics/models/azure_table_output_data_source.rb'
    autoload :BlobOutputDataSource,                               'generated/azure_mgmt_stream_analytics/models/blob_output_data_source.rb'
    autoload :BlobReferenceInputDataSource,                       'generated/azure_mgmt_stream_analytics/models/blob_reference_input_data_source.rb'
    autoload :ReferenceInputProperties,                           'generated/azure_mgmt_stream_analytics/models/reference_input_properties.rb'
    autoload :IoTHubStreamInputDataSource,                        'generated/azure_mgmt_stream_analytics/models/io_thub_stream_input_data_source.rb'
    autoload :EventHubStreamInputDataSource,                      'generated/azure_mgmt_stream_analytics/models/event_hub_stream_input_data_source.rb'
    autoload :BlobStreamInputDataSource,                          'generated/azure_mgmt_stream_analytics/models/blob_stream_input_data_source.rb'
    autoload :StreamInputProperties,                              'generated/azure_mgmt_stream_analytics/models/stream_input_properties.rb'
    autoload :SubscriptionQuota,                                  'generated/azure_mgmt_stream_analytics/models/subscription_quota.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_stream_analytics/models/sku_name.rb'
    autoload :OutputStartMode,                                    'generated/azure_mgmt_stream_analytics/models/output_start_mode.rb'
    autoload :EventsOutOfOrderPolicy,                             'generated/azure_mgmt_stream_analytics/models/events_out_of_order_policy.rb'
    autoload :OutputErrorPolicy,                                  'generated/azure_mgmt_stream_analytics/models/output_error_policy.rb'
    autoload :CompatibilityLevel,                                 'generated/azure_mgmt_stream_analytics/models/compatibility_level.rb'
    autoload :UdfType,                                            'generated/azure_mgmt_stream_analytics/models/udf_type.rb'
    autoload :JsonOutputSerializationFormat,                      'generated/azure_mgmt_stream_analytics/models/json_output_serialization_format.rb'
    autoload :Encoding,                                           'generated/azure_mgmt_stream_analytics/models/encoding.rb'
  end
end
