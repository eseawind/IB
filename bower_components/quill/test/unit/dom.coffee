describe('DOM', ->
  beforeEach( ->
    @container = $('#editor-container').html('<div></div>').get(0).firstChild
  )

  describe('classes', ->
    afterEach( ->
      $(@container).removeClass()
    )

    it('addClass()', ->
      Quill.DOM.addClass(@container, 'custom')
      expect($(@container).hasClass('custom')).toBe(true)
    )

    it('addClass() existing', ->
      Quill.DOM.addClass(@container, 'custom')
      Quill.DOM.addClass(@container, 'custom')
      expect($(@container).attr('class')).toEqual('custom')
    )

    it('getClasses()', ->
      $(@container).addClass('custom')
      $(@container).addClass('another')
      classes = Quill.DOM.getClasses(@container).sort()
      expect(classes.length).toEqual(2)
      expect(classes[0]).toEqual('another')
      expect(classes[1]).toEqual('custom')
    )

    it('hasClass()', ->
      $(@container).addClass('custom')
      expect(Quill.DOM.hasClass(@container, 'custom')).toBe(true)
    )

    it('removeClass()', ->
      $(@container).addClass('custom')
      Quill.DOM.removeClass(@container, 'custom')
      expect($(@container).hasClass('custom')).toBe(false)
    )

    it('removeClass() nonexistent', ->
      Quill.DOM.removeClass(@container, 'custom')
      expect(@container.outerHTML).toEqualHTML('<div></div>')
    )

    it('toggleClass()', ->
      Quill.DOM.toggleClass(@container, 'custom')
      expect($(@container).hasClass('custom')).toBe(true)
      Quill.DOM.toggleClass(@container, 'custom')
      expect($(@container).hasClass('custom')).toBe(false)
    )
  )

  describe('attributes', ->
    beforeEach( ->
      $(@container).html('<div class="custom" style="color: red;"></div>')
      @node = @container.firstChild
    )

    it('getAttributes() none', ->
      $(@container).html('<div></div>')
      @node = @container.firstChild
      attributes = Quill.DOM.getAttributes(@node)
      expect(_.keys(attributes).length).toEqual(0)
    )

    it('getAttributes() multiple', ->
      attributes = Quill.DOM.getAttributes(@node)
      expect(_.keys(attributes).length).toEqual(2)
      expect(attributes['class']).toEqual('custom')
      expect(attributes['style'].toLowerCase()).toContain('color: red')
    )

    it('clearAttributes()', ->
      Quill.DOM.clearAttributes(@node)
      expect(@node.outerHTML).toEqualHTML('<div></div>')
    )

    it('clearAttributes() with exception', ->
      Quill.DOM.clearAttributes(@node, 'class')
      expect(@node.outerHTML).toEqualHTML('<div class="custom"></div>')
    )
  )

  describe('styles', ->
    html = '<span style="color: red; display: inline;">Test</span>'
    styles =
      'color': 'red'
      'display': 'inline'

    it('getStyles()', ->
      $(@container).html(html)
      result = Quill.DOM.getStyles(@container.firstChild)
      expect(result).toEqual(styles)
    )

    it('setStyles()', ->
      $(@container).html('<span>Test</span>')
      Quill.DOM.setStyles(@container.firstChild, styles)
      _.each(styles, (value, name) =>
        expect(@container.firstChild.style[name]).toEqual(value)
      )
    )
  )

  describe('events', ->
    describe('addEventListener()', ->
      beforeEach( ->
        $(@container).html('<div><button type="button">Button</button></div>')
        @button = @container.querySelector('button')
      )

      it('click', (done) ->
        Quill.DOM.addEventListener(@button, 'click', _.partial(done, null))
        $(@button).trigger('click')
      )

      it('bubble', (done) ->
        Quill.DOM.addEventListener(@button.parentNode, 'click', _.partial(done, null))
        $(@button).trigger('click')
      )

      it('prevent bubble', (done) ->
        Quill.DOM.addEventListener(@button, 'click', ->
          _.defer(done)
          return false
        )
        Quill.DOM.addEventListener(@button.parentNode, 'click', ->
          throw new Error('Bubble not prevented')
        )
        $(@button).trigger('click')
      )
    )

    describe('triggerEvent()', ->
      it('click', ->
        $(@container).html('<button type="button" onclick="window._triggerClick = true;">Button</button>')
        @button = @container.querySelector('button')
        expect(window._triggerClick).not.toBeTruthy()
        Quill.DOM.triggerEvent(@button, 'click')
        expect(window._triggerClick).toBe(true)
        window._triggerClick = undefined
      )

      it('change', (done) ->
        $(@container).html('
          <select>
            <option value="one" selected>One</option>
            <option value="two">Two</option>
          </select>'
        )
        select = @container.querySelector('select')
        # Only testing event handler is fired, actually changing select is tested in select section below
        Quill.DOM.addEventListener(select, 'change', ->
          expect(select.selectedIndex).toEqual(0)
          done()
        )
        Quill.DOM.triggerEvent(select, 'change')
      )

      it('keydown', (done) ->
        $(@container).html('<div contenteditable=true></div>')
        @container.firstChild.focus()
        Quill.DOM.addEventListener(@container.firstChild, 'keydown', (event) ->
          expect(event.key).toEqual('A')
          expect(event.altKey).not.toBeTruthy()
          expect(event.ctrlKey).not.toBeTruthy()
          expect(event.metaKey).toBeTruthy()
          expect(event.shiftKey).toBeTruthy()
          done()
        )
        Quill.DOM.triggerEvent(@container.firstChild, 'keydown', { key: 'A', shiftKey: true, metaKey: true })
      )
    )
  )

  describe('text', ->
    beforeEach( ->
      $(@container).html('0<span>1</span><!-- Comment --><b><i>2</i></b>3<img><br>')
    )

    it('getText() from element', ->
      expect(Quill.DOM.getText(@container)).toEqual('0123')
    )

    it('getText() from break', ->
      expect(Quill.DOM.getText(@container.lastChild)).toEqual('')
    )

    it('getText() from comment', ->
      expect(Quill.DOM.getText(@container.childNodes[2])).toEqual('')
    )

    it('getText() embed tag', ->
      expect(Quill.DOM.getText(@container.querySelector('img'))).toEqual(Quill.DOM.EMBED_TEXT)
    )

    it('setText() element', ->
      Quill.DOM.setText(@container, 'test')
      expect($(@container).text()).toEqual('test')
    )

    it('setText() text node', ->
      Quill.DOM.setText(@container.firstChild, 'A')
      expect($(@container).text()).toEqual('A123')
    )
  )

  describe('manipulation', ->
    beforeEach( ->
      $(@container).html('<div style="cursor: pointer">One</div><div><span>Two</span><b>Bold</b></div>')
    )

    it('moveChildren()', ->
      Quill.DOM.moveChildren(@container.firstChild, @container.lastChild)
      expect(@container).toEqualHTML('<div style="cursor: pointer">One<span>Two</span><b>Bold</b></div><div></div>')
    )

    it('removeNode()', ->
      Quill.DOM.removeNode(@container.lastChild.firstChild)
      expect(@container).toEqualHTML('<div style="cursor: pointer">One</div><div><b>Bold</b></div>')
    )

    it('switchTag()', ->
      Quill.DOM.switchTag(@container.firstChild, 'span')
      expect(@container).toEqualHTML('<span style="cursor: pointer">One</span><div><span>Two</span><b>Bold</b></div>')
    )

    it('switchTag() to same', ->
      html = @container.innerHTML
      Quill.DOM.switchTag(@container.firstChild, 'div')
      expect(@container).toEqualHTML(html)
    )

    it('switchTag() to void', ->
      Quill.DOM.switchTag(@container.lastChild, 'br')
      expect(@container).toEqualHTML('<div style="cursor: pointer">One</div><br>')
    )

    it('unwrap()', ->
      Quill.DOM.unwrap(@container.lastChild)
      expect(@container).toEqualHTML('<div style="cursor: pointer">One</div><span>Two</span><b>Bold</b>')
    )

    it('wrap()', ->
      wrapper = @container.ownerDocument.createElement('div')
      Quill.DOM.wrap(wrapper, @container.firstChild)
      expect(@container).toEqualHTML('<div><div style="cursor: pointer">One</div></div><div><span>Two</span><b>Bold</b></div>')
    )

    it('wrap() orphan node', ->
      wrapper = @container.ownerDocument.createElement('div')
      node = @container.ownerDocument.createElement('span')
      Quill.DOM.wrap(wrapper, node)
      expect(wrapper.outerHTML).toEqualHTML('<div><span></span></div>')
    )
  )

  describe('select', ->
    beforeEach( ->
      $(@container).html('
        <select>
          <option value="one">One</option>
          <option value="two" selected>Two</option>
          <option value="three">Three</option>
        </select>
      ')
      @select = @container.firstChild
      $(@select).val('one')
    )

    it('getDefaultOption()', ->
      expect(Quill.DOM.getDefaultOption(@select)).toEqual(@select.children[1])
    )

    it('resetSelect()', ->
      expect($(@select).val()).toEqual('one')
      Quill.DOM.resetSelect(@select)
      expect($(@select).val()).toEqual('two')
    )

    it('selectOption() option', ->
      Quill.DOM.selectOption(@select, @select.children[2])
      expect($(@select).val()).toEqual('three')
    )

    it('selectOption() value', ->
      Quill.DOM.selectOption(@select, 'three')
      expect($(@select).val()).toEqual('three')
    )

    it('getSelectValue() option', ->
      Quill.DOM.selectOption(@select, @select.children[2])
      expect(Quill.DOM.getSelectValue(@select)).toEqual('three')
    )

    it('getSelectValue() value', ->
      Quill.DOM.selectOption(@select, 'three')
      expect(Quill.DOM.getSelectValue(@select)).toEqual('three')
    )

    it('getSelectValue() blank', ->
      Quill.DOM.selectOption(@select, '')
      expect(Quill.DOM.getSelectValue(@select)).toEqual('')
    )
  )

  describe('get nodes', ->
    it('getChildNodes()', ->
      @container.innerHTML = '<b>0</b><i>1</i><u>2</u><br>'
      nodes = Quill.DOM.getChildNodes(@container)
      expect(nodes.length).toEqual(4)
    )

    it('getDescendants()', ->
      @container.innerHTML = '<b>0</b><i><span>1</span><s>2</s></i><u>3</u><br>'
      nodes = Quill.DOM.getDescendants(@container)
      expect(nodes.length).toEqual(6)
    )
  )
)
