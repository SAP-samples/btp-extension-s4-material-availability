sap.ui.define([
    "./BaseController",
    "sap/ui/model/json/JSONModel",
    "sap/ui/core/routing/History",
    "../model/formatter",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator"
], function (BaseController, JSONModel, History, formatter, Filter, FilterOperator) {
    "use strict";

    return BaseController.extend("materialdashboard.controller.Object", {

        formatter: formatter,

        /* =========================================================== */
        /* lifecycle methods                                           */
        /* =========================================================== */

        /**
         * Called when the worklist controller is instantiated.
         * @public
         */
        onInit : function () {
            // Model used to manipulate control states. The chosen values make sure,
            // detail page shows busy indication immediately so there is no break in
            // between the busy indication for loading the view's meta data
            var oViewModel = new JSONModel({
                    busy : true,
                    delay : 0
                });
            this.getRouter().getRoute("object").attachPatternMatched(this._onObjectMatched, this);
            this.setModel(oViewModel, "objectView");
        },
        /* =========================================================== */
        /* event handlers                                              */
        /* =========================================================== */


        /**
         * Event handler  for navigating back.
         * It there is a history entry we go one step back in the browser history
         * If not, it will replace the current entry of the browser history with the worklist route.
         * @public
         */
        onNavBack : function() {
            var sPreviousHash = History.getInstance().getPreviousHash();
            if (sPreviousHash !== undefined) {
                // eslint-disable-next-line sap-no-history-manipulation
                history.go(-1);
            } else {
                this.getRouter().navTo("worklist", {}, true);
            }
        },

        /* =========================================================== */
        /* internal methods                                            */
        /* =========================================================== */

        /**
         * Binds the view to the object path.
         * @function
         * @param {sap.ui.base.Event} oEvent pattern match event in route 'object'
         * @private
         */
        _onObjectMatched : function (oEvent) {
            var sObjectId =  oEvent.getParameter("arguments").objectId;
            this._bindView(`/Material('${sObjectId}')`, sObjectId);
        },

        /**
         * Binds the view to the object path.
         * @function
         * @param {string} sObjectPath path to the object to be bound
         * @private
         */
        _bindView : function (sObjectPath, sObjectId) {
            var oViewModel = this.getModel("objectView");

            this.getView().bindElement({
                path: sObjectPath,
                events: {
                    change: this._onBindingChange.bind(this, sObjectId),
                    dataRequested: function () {
                        oViewModel.setProperty("/busy", true);
                    },
                    dataReceived: this._onDataReceived.bind(this)
                }
            });

            // Set filtering in binding context of the sales order data, by the object id
            var oSalesOrderTableBinding = this.getView().byId("salesOrdersTable").getBinding("items");
            oSalesOrderTableBinding.filter([new Filter("Material", FilterOperator.EQ, sObjectId), new Filter("SDProcessStatus", FilterOperator.NE, "C")], "Application");

            // Set material description binding context from appropriate language
            var sBindingPath = `/MaterialDescription(Material='${sObjectId}',Language='EN')`;
            var oMatDescrContext = this.getModel().createBindingContext(sBindingPath);  
            var oDescriptionTitle = this.getView().byId("MaterialDescriptionTitle");
            oDescriptionTitle.setBindingContext(oMatDescrContext);
            oDescriptionTitle.bindProperty("text", "Description");
            
        },

        _onDataReceived: function () {
            var oViewModel = this.getModel("objectView");
            oViewModel.setProperty("/busy", false);
        },

        _onBindingChange : function (sObjectId) {
            var oView = this.getView(),
                oViewModel = this.getModel("objectView"),
                oElementBinding = oView.getElementBinding();

            // No data for the binding
            if (!oElementBinding.getBoundContext()) {
                this.getRouter().getTargets().display("objectNotFound");
                return;
            }
  
            oViewModel.setProperty("/busy", false);
            
            var oResourceBundle = this.getResourceBundle();
            oViewModel.setProperty("/shareSendEmailSubject",
                oResourceBundle.getText("shareSendEmailObjectSubject", [sObjectId]));
            oViewModel.setProperty("/shareSendEmailMessage",
                oResourceBundle.getText("shareSendEmailObjectMessage", [sObjectId, location.href]));
        }
    });

});
