### Support

This code sets up a new session of the [OLE QA Framework](http://github.com/jkwaldrip/ole-qa-framework/)
before the testing steps are evaluated:

    Before do |scenario|
      @ole = OLE_QA::Framework::Session.new
    end

This code exits the [OLE QA Framework](http://github.com/jkwaldrip/ole-qa-framework/) session after
the testing steps are evaluated:

    After do |scenario|
      @ole.quit
    end