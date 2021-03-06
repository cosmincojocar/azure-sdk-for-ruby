# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Contains the data disk images information.
    #
    class DataDiskImage

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The LUN number for a data disk. This value is used to
      # identify data disk image inside the VMImage and therefore it must be
      # unique for each data disk.
      attr_accessor :lun


      #
      # Mapper for DataDiskImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataDiskImage',
          type: {
            name: 'Composite',
            class_name: 'DataDiskImage',
            model_properties: {
              lun: {
                required: false,
                read_only: true,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
