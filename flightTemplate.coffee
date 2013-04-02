"use strict"
define ["flight/component"], (defineComponent) ->
  flightTemplate = ->
    #Four main sections of each component
    # Attributes, Functions, Internal Events, External Events.  




    #Component Attributes
    #define DOM elements to a selector that you'll use in functions within this Component
    @defaultAttrs
      labelForClass: ('.nullClass')
      labelForId: ('#nullId')
      activeCssClass: ('activated')

    



    #functionalities of Component
    #what this component does based off incoming events from the interior or the exterior of this component.
    #Note that Flight is event based which is beautiful, because it forces innate organization and logic into the construction of your SPA.
    @actionThatClickingIdDoes = () ->
      @select('labelForClass').toggleClass(this.attr.activeCssClass);
      #this emmits 
      @trigger 'eventToBeSentToExternalComponent'

    @functionThatOccurs = () ->
      #functionality that accors when formSubmittal is emmitted from a different DOM Node





    @after "initialize", ->
      # events from within the Component
      #these are functionalities that are begat from within this DOM Node(component)
      @on "click", labelForId: @actionThatClickingIdDoes





      # incoming events from other Components
      #these are function defined above ^ that are triggered externally.
      @on document, "formSubmittal", @functionthatoccurs
      

  return defineComponent(flightTemplate)

