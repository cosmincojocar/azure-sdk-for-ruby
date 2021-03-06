# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Extensions summary for virtual machines of a virtual machine scale set.
    #
    class VirtualMachineScaleSetVMExtensionsSummary

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The extension name.
      attr_accessor :name

      # @return [Array<VirtualMachineStatusCodeCount>] The extensions
      # information.
      attr_accessor :statuses_summary


      #
      # Mapper for VirtualMachineScaleSetVMExtensionsSummary class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMExtensionsSummary',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMExtensionsSummary',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              statuses_summary: {
                required: false,
                read_only: true,
                serialized_name: 'statusesSummary',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineStatusCodeCountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineStatusCodeCount'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
