# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Details of a hostname derived from a domain.
    #
    class HostName

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of the hostname.
      attr_accessor :name

      # @return [Array<String>] List of apps the hostname is assigned to. This
      # list will have more than one app only if the hostname is pointing to a
      # Traffic Manager.
      attr_accessor :site_names

      # @return [String] Name of the Azure resource the hostname is assigned
      # to. If it is assigned to a Traffic Manager then it will be the Traffic
      # Manager name otherwise it will be the app name.
      attr_accessor :azure_resource_name

      # @return [AzureResourceType] Type of the Azure resource the hostname is
      # assigned to. Possible values include: 'Website', 'TrafficManager'
      attr_accessor :azure_resource_type

      # @return [CustomHostNameDnsRecordType] Type of the DNS record. Possible
      # values include: 'CName', 'A'
      attr_accessor :custom_host_name_dns_record_type

      # @return [HostNameType] Type of the hostname. Possible values include:
      # 'Verified', 'Managed'
      attr_accessor :host_name_type


      #
      # Mapper for HostName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HostName',
          type: {
            name: 'Composite',
            class_name: 'HostName',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              site_names: {
                required: false,
                serialized_name: 'siteNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              azure_resource_name: {
                required: false,
                serialized_name: 'azureResourceName',
                type: {
                  name: 'String'
                }
              },
              azure_resource_type: {
                required: false,
                serialized_name: 'azureResourceType',
                type: {
                  name: 'Enum',
                  module: 'AzureResourceType'
                }
              },
              custom_host_name_dns_record_type: {
                required: false,
                serialized_name: 'customHostNameDnsRecordType',
                type: {
                  name: 'Enum',
                  module: 'CustomHostNameDnsRecordType'
                }
              },
              host_name_type: {
                required: false,
                serialized_name: 'hostNameType',
                type: {
                  name: 'Enum',
                  module: 'HostNameType'
                }
              }
            }
          }
        }
      end
    end
  end
end
