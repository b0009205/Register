package uk.ac.shu.webarch.eregister

import org.springframework.dao.DataIntegrityViolationException

class InstructorgrailsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [instructorgrailsInstanceList: Instructorgrails.list(params), instructorgrailsInstanceTotal: Instructorgrails.count()]
    }

    def create() {
        [instructorgrailsInstance: new Instructorgrails(params)]
    }

    def save() {
        def instructorgrailsInstance = new Instructorgrails(params)
        if (!instructorgrailsInstance.save(flush: true)) {
            render(view: "create", model: [instructorgrailsInstance: instructorgrailsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), instructorgrailsInstance.id])
        redirect(action: "show", id: instructorgrailsInstance.id)
    }

    def show(Long id) {
        def instructorgrailsInstance = Instructorgrails.get(id)
        if (!instructorgrailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), id])
            redirect(action: "list")
            return
        }

        [instructorgrailsInstance: instructorgrailsInstance]
    }

    def edit(Long id) {
        def instructorgrailsInstance = Instructorgrails.get(id)
        if (!instructorgrailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), id])
            redirect(action: "list")
            return
        }

        [instructorgrailsInstance: instructorgrailsInstance]
    }

    def update(Long id, Long version) {
        def instructorgrailsInstance = Instructorgrails.get(id)
        if (!instructorgrailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (instructorgrailsInstance.version > version) {
                instructorgrailsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'instructorgrails.label', default: 'Instructorgrails')] as Object[],
                          "Another user has updated this Instructorgrails while you were editing")
                render(view: "edit", model: [instructorgrailsInstance: instructorgrailsInstance])
                return
            }
        }

        instructorgrailsInstance.properties = params

        if (!instructorgrailsInstance.save(flush: true)) {
            render(view: "edit", model: [instructorgrailsInstance: instructorgrailsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), instructorgrailsInstance.id])
        redirect(action: "show", id: instructorgrailsInstance.id)
    }

    def delete(Long id) {
        def instructorgrailsInstance = Instructorgrails.get(id)
        if (!instructorgrailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), id])
            redirect(action: "list")
            return
        }

        try {
            instructorgrailsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'instructorgrails.label', default: 'Instructorgrails'), id])
            redirect(action: "show", id: id)
        }
    }
}
