module Test
  module Quality
    module Tools
      module Cane
        def expect_cane_run(quality_checker)
          @mocks[:quality_checker_class]
            .expects(:new).with('cane',
          { gives_error_code_on_violations: true,
            emacs_format: true },
            '.')
            .returns(quality_checker)
          @mocks[:configuration_writer].expects(:exist?).with('.cane')
            .returns(true)
          expect_installed('cane')
        end
      end
    end
  end
end
