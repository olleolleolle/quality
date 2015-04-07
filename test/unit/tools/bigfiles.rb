module Test
  module Quality
    module Tools
      # Test for the 'bigfiles' tool within the quality gem
      module BigFiles
        def bigfiles_expected_args
          "--glob '{app,lib,test,spec,feature}/**/*.{rb,swift,cpp,c,java,py}'"
        end

        def expect_bigfiles_run(quality_checker)
          @mocks[:quality_checker_class]
            .expects(:new).with('bigfiles',
                                { args: bigfiles_expected_args },
                                'metrics',
                                false)
            .returns(quality_checker)
        end
      end
    end
  end
end
