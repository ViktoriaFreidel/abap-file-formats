INTERFACE zif_aff_uist_v1
  PUBLIC.

  TYPES:
    "! <p class="shorttext">SAP Fiori Page Template</p>
    "! SAP Fiori Page Template
    BEGIN OF ty_page,
      "! <p class="shorttext">Name</p>
      "! Page Template name
      name          TYPE c LENGTH 35,

    END OF ty_page,

    ty_pages TYPE TABLE OF ty_page WITH KEY page_template_id.

  TYPES:
    "! <p class="shorttext">Fiori Launchpad Space Template</p>
    "! Fiori Launchpad Space Template
    BEGIN OF ty_main,
      "! <p class="shorttext">Format Version</p>
      "! Format version
      "! $required
      format_version  TYPE zif_aff_types_v1=>ty_format_version,

      "! <p class="shorttext">Header</p>
      "! Header
      "! $required
      header          TYPE zif_aff_types_v1=>ty_header_100_cloud,

      "! <p class="shorttext">ID</p>
      "! Space Template ID
      "! $required
      id            TYPE c LENGTH 35,

      "! <p class="shorttext">Title</p>
      "! Space Template Title
      "! $required
      title         TYPE zif_aff_types_v1=>ty_description_100,

      "! <p class="shorttext">Description </p>
      "! Space Template Description
      "! $required
      description   TYPE zif_aff_types_v1=>ty_description_100,

      "! <p class="shorttext">Sort Priority</p>
      "! Sort priority
      "! $minimum: -999.999
      "! $maximum: 999.999
      sort_priority TYPE p LENGTH 7 DECIMALS 3,

      "! <p class="shorttext">Base Space Template Name</p>
      "! Base Space Template name
      base_space_template_id       TYPE c LENGTH 35,

      "! <p class="shorttext">Page Templates</p>
      "! Assigned SAP Fiori launchpad page templates
      pages                        TYPE ty_pages,
    END OF ty_main.
ENDINTERFACE.