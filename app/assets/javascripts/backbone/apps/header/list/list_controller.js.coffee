@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
  List.Controller = 
    listHeader: ->
      links = @getLinksCollection()
      window.links = links

      headerView = @getHeaderView links
      App.headerRegion.show headerView

    getHeaderView: (links)->
      new List.Headers
        collection: links