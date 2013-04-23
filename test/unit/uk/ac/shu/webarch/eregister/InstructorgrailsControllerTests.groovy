package uk.ac.shu.webarch.eregister



import org.junit.*
import grails.test.mixin.*

@TestFor(InstructorgrailsController)
@Mock(Instructorgrails)
class InstructorgrailsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/instructorgrails/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.instructorgrailsInstanceList.size() == 0
        assert model.instructorgrailsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.instructorgrailsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.instructorgrailsInstance != null
        assert view == '/instructorgrails/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/instructorgrails/show/1'
        assert controller.flash.message != null
        assert Instructorgrails.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/instructorgrails/list'

        populateValidParams(params)
        def instructorgrails = new Instructorgrails(params)

        assert instructorgrails.save() != null

        params.id = instructorgrails.id

        def model = controller.show()

        assert model.instructorgrailsInstance == instructorgrails
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/instructorgrails/list'

        populateValidParams(params)
        def instructorgrails = new Instructorgrails(params)

        assert instructorgrails.save() != null

        params.id = instructorgrails.id

        def model = controller.edit()

        assert model.instructorgrailsInstance == instructorgrails
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/instructorgrails/list'

        response.reset()

        populateValidParams(params)
        def instructorgrails = new Instructorgrails(params)

        assert instructorgrails.save() != null

        // test invalid parameters in update
        params.id = instructorgrails.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/instructorgrails/edit"
        assert model.instructorgrailsInstance != null

        instructorgrails.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/instructorgrails/show/$instructorgrails.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        instructorgrails.clearErrors()

        populateValidParams(params)
        params.id = instructorgrails.id
        params.version = -1
        controller.update()

        assert view == "/instructorgrails/edit"
        assert model.instructorgrailsInstance != null
        assert model.instructorgrailsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/instructorgrails/list'

        response.reset()

        populateValidParams(params)
        def instructorgrails = new Instructorgrails(params)

        assert instructorgrails.save() != null
        assert Instructorgrails.count() == 1

        params.id = instructorgrails.id

        controller.delete()

        assert Instructorgrails.count() == 0
        assert Instructorgrails.get(instructorgrails.id) == null
        assert response.redirectedUrl == '/instructorgrails/list'
    }
}
