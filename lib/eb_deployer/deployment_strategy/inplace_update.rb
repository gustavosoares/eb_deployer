module EbDeployer
  module DeploymentStrategy
    class InplaceUpdate
      def initialize(component)
        @component = component
      end

      def test_compatibility(env_create_opts)
      end

      def deploy(version_label, env_settings, inactive_settings)
        @component.new_eb_env.deploy(version_label, env_settings)
      end

      def swap
        raise "InplaceUpdate deployment does not support swapping."
      end

      def destroy_inactive
        raise "Inplace deployment does not support destroying inactive elasticbeanstalk environment."
      end

    end
  end
end
