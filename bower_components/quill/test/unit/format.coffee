describe('Format', ->
  beforeEach( ->
    @container = $('#editor-container').html('').get(0)
  )

  tests =
    tag:
      format: new Quill.Format(document, Quill.Format.FORMATS.bold)
      existing: '<b>Text</b>'
      missing: 'Text'
      value: true
    style:
      format: new Quill.Format(document, Quill.Format.FORMATS.color)
      existing: '<span style="color: blue;">Text</span>'
      missing: 'Text'
      value: 'blue'
    image:
      format: new Quill.Format(document, Quill.Format.FORMATS.image)
      existing: '<img src="http://quilljs.com/images/cloud.png">'
      missing: 'Text'
      removed: Quill.DOM.EMBED_TEXT
      value: 'http://quilljs.com/images/cloud.png'
    link:
      format: new Quill.Format(document, Quill.Format.FORMATS.link)
      existing: '<a href="http://quilljs.com">Text</a>'
      missing: 'Text'
      value: 'http://quilljs.com'
    class:
      format: new Quill.Format(document, { class: 'author-' })
      existing: '<span class="author-jason">Text</span>'
      missing: 'Text'
      value: 'jason'
    line:
      format: new Quill.Format(document, Quill.Format.FORMATS.align)
      existing: '<p style="text-align: right;">Text</p>'
      missing: '<p>Text</p>'
      value: 'right'
    complex:
      format: new Quill.Format(document, Quill.Format.FORMATS.bold)
      existing: '<b><u><i>Text</i><s>Strike</s></u></b><i>Italic</i>'
      missing: '<u><i>Text</i><s>Strike</s></u><i>Italic</i>'
      value: true

  describe('match()', ->
    _.each(tests, (test, name) ->
      it("#{name} existing", ->
        @container.innerHTML = test.existing
        expect(test.format.match(@container.firstChild)).toBe(true)
      )

      it("#{name} missing", ->
        @container.innerHTML = test.missing
        expect(test.format.match(@container.firstChild)).toBe(false)
      )
    )

    it('default', ->
      @container.innerHTML = '<span style="font-size: 13px;">Text</span>'
      format = new Quill.Format(document, Quill.Format.FORMATS.color)
      expect(format.match(@container.firstChild)).toBe(false)
    )
  )

  describe('value()', ->
    _.each(tests, (test, name) ->
      it("#{name} existing", ->
        @container.innerHTML = test.existing
        expect(test.format.value(@container.firstChild)).toEqual(test.value)
      )

      it("#{name} missing", ->
        @container.innerHTML = test.missing
        expect(test.format.value(@container.firstChild)).toBe(undefined)
      )
    )

    it('default', ->
      @container.innerHTML = '<span style="font-size: 13px;">Text</span>'
      format = new Quill.Format(document, Quill.Format.FORMATS.color)
      expect(format.value(@container.firstChild)).toBe(undefined)
    )
  )

  describe('add()', ->
    _.each(tests, (test, name) ->
      it("#{name} add value", ->
        @container.innerHTML = test.missing
        test.format.add(@container.firstChild, test.value)
        expect(@container).toEqualHTML(test.added or test.existing)
      )

      it("#{name} add value to exisitng", ->
        @container.innerHTML = test.existing
        test.format.add(@container.firstChild, test.value)
        expect(@container).toEqualHTML(test.existing)
      )

      it("#{name} add falsy value to existing", ->
        @container.innerHTML = test.existing
        test.format.add(@container.firstChild, false)
        expect(@container).toEqualHTML(test.removed or test.missing)
      )

      it("#{name} add falsy value to missing", ->
        @container.innerHTML = test.missing
        test.format.add(@container.firstChild, false)
        expect(@container).toEqualHTML(test.missing)
      )
    )

    it('change value', ->
      @container.innerHTML = '<span style="color: blue;">Text</span>'
      format = new Quill.Format(document, Quill.Format.FORMATS.color)
      format.add(@container.firstChild, 'red')
      expect(@container).toEqualHTML('<span style="color: red;">Text</span>')
    )

    it('default value', ->
      @container.innerHTML = '<span>Text</span>'
      format = new Quill.Format(document, Quill.Format.FORMATS.size)
      format.add(@container.firstChild, Quill.Format.FORMATS.size.default)
      expect(@container).toEqualHTML('<span>Text</span>')
    )

    it('text node tag', ->
      @container.innerHTML = 'Text'
      format = new Quill.Format(document, Quill.Format.FORMATS.bold)
      format.add(@container.firstChild, true)
      expect(@container).toEqualHTML('<b>Text</b>')
    )

    it('text node style', ->
      @container.innerHTML = 'Text'
      format = new Quill.Format(document, Quill.Format.FORMATS.size)
      format.add(@container.firstChild, '18px')
      expect(@container).toEqualHTML('<span style="font-size: 18px;">Text</span>')
    )

    it('class over existing', ->
      @container.innerHTML = '<span class="author-argo">Text</span>'
      format = new Quill.Format(document, { class: 'author-' })
      format.add(@container.firstChild, 'jason')
      expect(@container).toEqualHTML('<span class="author-jason">Text</span>')
    )
  )

  describe('remove()', ->
    _.each(tests, (test, name) ->
      it("#{name} existing", ->
        @container.innerHTML = test.existing
        test.format.remove(@container.firstChild)
        expect(@container).toEqualHTML(test.removed or test.missing)
      )

      it("#{name} missing", ->
        @container.innerHTML = test.missing
        test.format.remove(@container.firstChild)
        expect(@container).toEqualHTML(test.missing)
      )
    )
  )
)
