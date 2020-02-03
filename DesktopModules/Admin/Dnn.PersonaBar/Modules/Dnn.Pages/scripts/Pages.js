define(['jquery', 'knockout', 'main/extension', 'main/config', 'jquery-ui.min', 'dnn.jquery'], function ($, ko, ext, cf) {
    'use strict';
    window.ko = ko;

    var config = cf.init();

    var init = function (wrapper, util, params, callback) {
        window.dnn.initPages = function initializePages() {
            return {
                utilities: util,
                moduleName: "Pages",
                config: config,
                viewName: params.viewName,
                viewParams: params.viewParams,
                settings: params.settings
            };
        };

        // Start Dnnplus.ir
        if ($('body').hasClass('rtl')) {
            util.loadBundleScript('modules/dnn.pages/scripts/bundles/pages-bundle.rtl.js');
        } else {
            util.loadBundleScript('modules/dnn.pages/scripts/bundles/pages-bundle.js');
        };
        // End Dnnplus.ir


        if (typeof callback === 'function') {
            callback();
        }
    };

    var load = function (params, callback) {
        window.dnn.pages.load({
            viewName: params.viewName,
            viewParams: params.viewParams,
            settings: params.settings
        });
        if (window.dnn.pages.pageHierarchyManager &&
            window.dnn.pages.pageHierarchyManager._initialized) {
            window.dnn.pages.pageHierarchyManager._resizeContentContainer(true);
        }
        if (typeof callback === 'function') {
            callback();
        }
    };

    return {
        init: init,
        load: load
    };
});
