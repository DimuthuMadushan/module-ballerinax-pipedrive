_Author_:  @DimuthuMadushan \
_Created_: 2026/10/16 \
_Updated_: 2026/10/16 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from Pipedrive. 
The OpenAPI specification is obtained from at [wso2/api-specs](https://github.com/wso2/api-specs/blob/main/openapi/pipedrive/pipedrive/2.0.0/openapi.yaml).
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.

1. Change `GetPersonFieldsResponseUiVisibilityShowInAddDealDialog order` to nullable
- **Original**: The `order` field in `GetPersonFieldsResponseUiVisibilityShowInAddDealDialog` was `not nullable`.
- **Updated**: The `order` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

2. Change `UpdateTaskRequest parent_task_id` to nullable
- **Original**: The `parent_task_id` field in `UpdateTaskRequest` was `not nullable`.
- **Updated**: The `parent_task_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

3. Change `UpdateTaskRequest due_date` to nullable
- **Original**: The `due_date` field in `UpdateTaskRequest` was `not nullable`.
- **Updated**: The `due_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

4. Change `UpdateTaskRequest description` to nullable
- **Original**: The `description` field in `UpdateTaskRequest` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

5. Change `UpdateTaskRequest priority` to nullable
- **Original**: The `priority` field in `UpdateTaskRequest` was `not nullable`.
- **Updated**: The `priority` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

6. Change `UpdateTaskRequest start_date` to nullable
- **Original**: The `start_date` field in `UpdateTaskRequest` was `not nullable`.
- **Updated**: The `start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

7. Change `UpdateTaskRequest assignee_id` to nullable
- **Original**: The `assignee_id` field in `UpdateTaskRequest` was `not nullable`.
- **Updated**: The `assignee_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

8. Change `ProductPricesPart1 product_id` to nullable
- **Original**: The `product_id` field in `ProductPricesPart1` was `not nullable`.
- **Updated**: The `product_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

9. Change `ProductPricesPart1 currency` to nullable
- **Original**: The `currency` field in `ProductPricesPart1` was `not nullable`.
- **Updated**: The `currency` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

10. Change `ProductPricesPart1 direct_cost` to nullable
- **Original**: The `direct_cost` field in `ProductPricesPart1` was `not nullable`.
- **Updated**: The `direct_cost` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

11. Change `ConvertResponse additional_data` to nullable
- **Original**: The `additional_data` field in `ConvertResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

12. Change `ConvertResponse data` to nullable
- **Original**: The `data` field in `ConvertResponse` was `not nullable`.
- **Updated**: The `data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

13. Change `AddPersonFieldUiVisibilityShowInAddDealDialog order` to nullable
- **Original**: The `order` field in `AddPersonFieldUiVisibilityShowInAddDealDialog` was `not nullable`.
- **Updated**: The `order` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

14. Change `DeleteFieldResponseData subfields` to nullable
- **Original**: The `subfields` field in `DeleteFieldResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

15. Change `DeleteFieldResponseData options` to nullable
- **Original**: The `options` field in `DeleteFieldResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

16. Change `GetProjectSearchResponseDataItemOwner id` to nullable
- **Original**: The `id` field in `GetProjectSearchResponseDataItemOwner` was `not nullable`.
- **Updated**: The `id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

17. Change `Project archive_time` to nullable
- **Original**: The `archive_time` field in `Project` was `not nullable`.
- **Updated**: The `archive_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

18. Change `Project health_status` to nullable
- **Original**: The `health_status` field in `Project` was `not nullable`.
- **Updated**: The `health_status` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

19. Change `AddActivityRequest outcome` to nullable
- **Original**: The `outcome` field in `AddActivityRequest` was `not nullable`.
- **Updated**: The `outcome` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

20. Change `AddConvertDealToLeadResponse additional_data` to nullable
- **Original**: The `additional_data` field in `AddConvertDealToLeadResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

21. Change `AddDealFieldRequest description` to nullable
- **Original**: The `description` field in `AddDealFieldRequest` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

22. Change `AddOrganizationRequest employee_count` to nullable
- **Original**: The `employee_count` field in `AddOrganizationRequest` was `not nullable`.
- **Updated**: The `employee_count` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

23. Change `AddOrganizationRequest website` to nullable
- **Original**: The `website` field in `AddOrganizationRequest` was `not nullable`.
- **Updated**: The `website` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

24. Change `AddOrganizationRequest industry` to nullable
- **Original**: The `industry` field in `AddOrganizationRequest` was `not nullable`.
- **Updated**: The `industry` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

25. Change `AddOrganizationRequest linkedin` to nullable
- **Original**: The `linkedin` field in `AddOrganizationRequest` was `not nullable`.
- **Updated**: The `linkedin` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

26. Change `AddOrganizationRequest annual_revenue` to nullable
- **Original**: The `annual_revenue` field in `AddOrganizationRequest` was `not nullable`.
- **Updated**: The `annual_revenue` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

27. Change `UpdateTaskResponse additional_data` to nullable
- **Original**: The `additional_data` field in `UpdateTaskResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

28. Change `GetTasksResponseData parent_task_id` to nullable
- **Original**: The `parent_task_id` field in `GetTasksResponseData` was `not nullable`.
- **Updated**: The `parent_task_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

29. Change `GetTasksResponseData due_date` to nullable
- **Original**: The `due_date` field in `GetTasksResponseData` was `not nullable`.
- **Updated**: The `due_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

30. Change `GetTasksResponseData description` to nullable
- **Original**: The `description` field in `GetTasksResponseData` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

31. Change `GetTasksResponseData priority` to nullable
- **Original**: The `priority` field in `GetTasksResponseData` was `not nullable`.
- **Updated**: The `priority` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

32. Change `GetTasksResponseData marked_as_done_time` to nullable
- **Original**: The `marked_as_done_time` field in `GetTasksResponseData` was `not nullable`.
- **Updated**: The `marked_as_done_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

33. Change `GetTasksResponseData start_date` to nullable
- **Original**: The `start_date` field in `GetTasksResponseData` was `not nullable`.
- **Updated**: The `start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

34. Change `UpdateOrganizationRequest employee_count` to nullable
- **Original**: The `employee_count` field in `UpdateOrganizationRequest` was `not nullable`.
- **Updated**: The `employee_count` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

35. Change `UpdateOrganizationRequest website` to nullable
- **Original**: The `website` field in `UpdateOrganizationRequest` was `not nullable`.
- **Updated**: The `website` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

36. Change `UpdateOrganizationRequest industry` to nullable
- **Original**: The `industry` field in `UpdateOrganizationRequest` was `not nullable`.
- **Updated**: The `industry` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

37. Change `UpdateOrganizationRequest linkedin` to nullable
- **Original**: The `linkedin` field in `UpdateOrganizationRequest` was `not nullable`.
- **Updated**: The `linkedin` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

38. Change `UpdateOrganizationRequest annual_revenue` to nullable
- **Original**: The `annual_revenue` field in `UpdateOrganizationRequest` was `not nullable`.
- **Updated**: The `annual_revenue` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

39. Change `GetProjectSearchResponseDataItemDeal title` to nullable
- **Original**: The `title` field in `GetProjectSearchResponseDataItemDeal` was `not nullable`.
- **Updated**: The `title` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

40. Change `GetOrganizationsResponseData employee_count` to nullable
- **Original**: The `employee_count` field in `GetOrganizationsResponseData` was `not nullable`.
- **Updated**: The `employee_count` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

41. Change `GetOrganizationsResponseData website` to nullable
- **Original**: The `website` field in `GetOrganizationsResponseData` was `not nullable`.
- **Updated**: The `website` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

42. Change `GetOrganizationsResponseData industry` to nullable
- **Original**: The `industry` field in `GetOrganizationsResponseData` was `not nullable`.
- **Updated**: The `industry` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

43. Change `GetOrganizationsResponseData linkedin` to nullable
- **Original**: The `linkedin` field in `GetOrganizationsResponseData` was `not nullable`.
- **Updated**: The `linkedin` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

44. Change `GetOrganizationsResponseData update_time` to nullable
- **Original**: The `update_time` field in `GetOrganizationsResponseData` was `not nullable`.
- **Updated**: The `update_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

45. Change `GetOrganizationsResponseData annual_revenue` to nullable
- **Original**: The `annual_revenue` field in `GetOrganizationsResponseData` was `not nullable`.
- **Updated**: The `annual_revenue` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

46. Change `GetActivitiesResponseData due_time` to nullable
- **Original**: The `due_time` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `due_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

47. Change `GetActivitiesResponseData duration` to nullable
- **Original**: The `duration` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `duration` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

48. Change `GetActivitiesResponseData project_id` to nullable
- **Original**: The `project_id` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `project_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

49. Change `GetActivitiesResponseData deal_id` to nullable
- **Original**: The `deal_id` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `deal_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

50. Change `GetActivitiesResponseData lead_id` to nullable
- **Original**: The `lead_id` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `lead_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

51. Change `GetActivitiesResponseData outcome` to nullable
- **Original**: The `outcome` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `outcome` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

52. Change `GetActivitiesResponseData person_id` to nullable
- **Original**: The `person_id` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `person_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

53. Change `GetActivitiesResponseData marked_as_done_time` to nullable
- **Original**: The `marked_as_done_time` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `marked_as_done_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

54. Change `GetActivitiesResponseData org_id` to nullable
- **Original**: The `org_id` field in `GetActivitiesResponseData` was `not nullable`.
- **Updated**: The `org_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

55. Change `AddDealProductRequest1Part1 billing_start_date` to nullable
- **Original**: The `billing_start_date` field in `AddDealProductRequest1Part1` was `not nullable`.
- **Updated**: The `billing_start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

56. Change `ConversionStatusResponse additional_data` to nullable
- **Original**: The `additional_data` field in `ConversionStatusResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

57. Change `GetProjectSearchResponseDataItemPerson name` to nullable
- **Original**: The `name` field in `GetProjectSearchResponseDataItemPerson` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

58. Change `FieldOptionsResponse additional_data` to nullable
- **Original**: The `additional_data` field in `FieldOptionsResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

59. Change `GetProjectSearchResponseDataItemOrganization address` to nullable
- **Original**: The `address` field in `GetProjectSearchResponseDataItemOrganization` was `not nullable`.
- **Updated**: The `address` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

60. Change `GetProjectSearchResponseDataItemOrganization name` to nullable
- **Original**: The `name` field in `GetProjectSearchResponseDataItemOrganization` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

61. Change `GetDealSearchResponseDataItem value` to nullable
- **Original**: The `value` field in `GetDealSearchResponseDataItem` was `not nullable`.
- **Updated**: The `value` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

62. Change `GetProductFieldsResponseData subfields` to nullable
- **Original**: The `subfields` field in `GetProductFieldsResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

63. Change `GetProductFieldsResponseData options` to nullable
- **Original**: The `options` field in `GetProductFieldsResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

64. Change `AddOrganizationFieldUiVisibilityShowInAddDealDialog order` to nullable
- **Original**: The `order` field in `AddOrganizationFieldUiVisibilityShowInAddDealDialog` was `not nullable`.
- **Updated**: The `order` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

65. Change `AddTaskResponse additional_data` to nullable
- **Original**: The `additional_data` field in `AddTaskResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

66. Change `AddStageRequest days_to_rotten` to nullable
- **Original**: The `days_to_rotten` field in `AddStageRequest` was `not nullable`.
- **Updated**: The `days_to_rotten` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

67. Change `GetActivityFieldsResponseAdditionalData next_cursor` to nullable
- **Original**: The `next_cursor` field in `GetActivityFieldsResponseAdditionalData` was `not nullable`.
- **Updated**: The `next_cursor` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

68. Change `DealProductRequestBody product_variation_id` to nullable
- **Original**: The `product_variation_id` field in `DealProductRequestBody` was `not nullable`.
- **Updated**: The `product_variation_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

69. Change `OrganizationItemAddress country` to nullable
- **Original**: The `country` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `country` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

70. Change `OrganizationItemAddress route` to nullable
- **Original**: The `route` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `route` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

71. Change `OrganizationItemAddress locality` to nullable
- **Original**: The `locality` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `locality` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

72. Change `OrganizationItemAddress sublocality` to nullable
- **Original**: The `sublocality` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `sublocality` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

73. Change `OrganizationItemAddress street_number` to nullable
- **Original**: The `street_number` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `street_number` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

74. Change `OrganizationItemAddress admin_area_level_1` to nullable
- **Original**: The `admin_area_level_1` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `admin_area_level_1` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

75. Change `OrganizationItemAddress admin_area_level_2` to nullable
- **Original**: The `admin_area_level_2` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `admin_area_level_2` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

76. Change `OrganizationItemAddress postal_code` to nullable
- **Original**: The `postal_code` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `postal_code` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

77. Change `OrganizationItemAddress subpremise` to nullable
- **Original**: The `subpremise` field in `OrganizationItemAddress` was `not nullable`.
- **Updated**: The `subpremise` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

78. Change `GetOrganizationFieldsResponseData subfields` to nullable
- **Original**: The `subfields` field in `GetOrganizationFieldsResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

79. Change `GetOrganizationFieldsResponseData options` to nullable
- **Original**: The `options` field in `GetOrganizationFieldsResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

80. Change `GetPersonsResponseData picture_id` to nullable
- **Original**: The `picture_id` field in `GetPersonsResponseData` was `not nullable`.
- **Updated**: The `picture_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

81. Change `GetPersonsResponseData update_time` to nullable
- **Original**: The `update_time` field in `GetPersonsResponseData` was `not nullable`.
- **Updated**: The `update_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

82. Change `PersonItemAddress country` to nullable
- **Original**: The `country` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `country` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

83. Change `PersonItemAddress route` to nullable
- **Original**: The `route` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `route` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

84. Change `PersonItemAddress locality` to nullable
- **Original**: The `locality` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `locality` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

85. Change `PersonItemAddress sublocality` to nullable
- **Original**: The `sublocality` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `sublocality` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

86. Change `PersonItemAddress street_number` to nullable
- **Original**: The `street_number` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `street_number` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

87. Change `PersonItemAddress admin_area_level_1` to nullable
- **Original**: The `admin_area_level_1` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `admin_area_level_1` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

88. Change `PersonItemAddress admin_area_level_2` to nullable
- **Original**: The `admin_area_level_2` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `admin_area_level_2` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

89. Change `PersonItemAddress postal_code` to nullable
- **Original**: The `postal_code` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `postal_code` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

90. Change `PersonItemAddress subpremise` to nullable
- **Original**: The `subpremise` field in `PersonItemAddress` was `not nullable`.
- **Updated**: The `subpremise` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

91. Change `GetTaskResponse additional_data` to nullable
- **Original**: The `additional_data` field in `GetTaskResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

92. Change `GetProjectPhasesResponse additional_data` to nullable
- **Original**: The `additional_data` field in `GetProjectPhasesResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

93. Change `DeleteDealFieldResponseData subfields` to nullable
- **Original**: The `subfields` field in `DeleteDealFieldResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

94. Change `DeleteDealFieldResponseData options` to nullable
- **Original**: The `options` field in `DeleteDealFieldResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

95. Change `AddManyDealProductResponseDataPart1 order_nr` to nullable
- **Original**: The `order_nr` field in `AddManyDealProductResponseDataPart1` was `not nullable`.
- **Updated**: The `order_nr` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

96. Change `AddManyDealProductResponseDataPart1 product_variation_id` to nullable
- **Original**: The `product_variation_id` field in `AddManyDealProductResponseDataPart1` was `not nullable`.
- **Updated**: The `product_variation_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

97. Change `AddDealProductRequestPart2 billing_frequency_cycles` to nullable
- **Original**: The `billing_frequency_cycles` field in `AddDealProductRequestPart2` was `not nullable`.
- **Updated**: The `billing_frequency_cycles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

98. Change `GetOrganizationSearchResponseDataItem address` to nullable
- **Original**: The `address` field in `GetOrganizationSearchResponseDataItem` was `not nullable`.
- **Updated**: The `address` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

99. Change `AddDealProductRequestPart3 billing_start_date` to nullable
- **Original**: The `billing_start_date` field in `AddDealProductRequestPart3` was `not nullable`.
- **Updated**: The `billing_start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

100. Change `AddOrganizationFieldUiVisibilityShowInAddPersonDialog order` to nullable
- **Original**: The `order` field in `AddOrganizationFieldUiVisibilityShowInAddPersonDialog` was `not nullable`.
- **Updated**: The `order` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

101. Change `GetOrganizationFieldsResponseUiVisibilityShowInAddPersonDialog order` to nullable
- **Original**: The `order` field in `GetOrganizationFieldsResponseUiVisibilityShowInAddPersonDialog` was `not nullable`.
- **Updated**: The `order` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

102. Change `UpsertStageResponseStageItem update_time` to nullable
- **Original**: The `update_time` field in `UpsertStageResponseStageItem` was `not nullable`.
- **Updated**: The `update_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

103. Change `UpsertStageResponseStageItem days_to_rotten` to nullable
- **Original**: The `days_to_rotten` field in `UpsertStageResponseStageItem` was `not nullable`.
- **Updated**: The `days_to_rotten` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

104. Change `UpdateProductRequestPart3 billing_frequency_cycles` to nullable
- **Original**: The `billing_frequency_cycles` field in `UpdateProductRequestPart3` was `not nullable`.
- **Updated**: The `billing_frequency_cycles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

105. Change `AddManyDealProductResponseDataPart3 billing_frequency_cycles` to nullable
- **Original**: The `billing_frequency_cycles` field in `AddManyDealProductResponseDataPart3` was `not nullable`.
- **Updated**: The `billing_frequency_cycles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

106. Change `GetProjectChangelogResponseData change_source_user_agent` to nullable
- **Original**: The `change_source_user_agent` field in `GetProjectChangelogResponseData` was `not nullable`.
- **Updated**: The `change_source_user_agent` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

107. Change `GetProjectChangelogResponseData change_source` to nullable
- **Original**: The `change_source` field in `GetProjectChangelogResponseData` was `not nullable`.
- **Updated**: The `change_source` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

108. Change `AddTaskRequest parent_task_id` to nullable
- **Original**: The `parent_task_id` field in `AddTaskRequest` was `not nullable`.
- **Updated**: The `parent_task_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

109. Change `AddTaskRequest due_date` to nullable
- **Original**: The `due_date` field in `AddTaskRequest` was `not nullable`.
- **Updated**: The `due_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

110. Change `AddTaskRequest description` to nullable
- **Original**: The `description` field in `AddTaskRequest` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

111. Change `AddTaskRequest priority` to nullable
- **Original**: The `priority` field in `AddTaskRequest` was `not nullable`.
- **Updated**: The `priority` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

112. Change `AddTaskRequest start_date` to nullable
- **Original**: The `start_date` field in `AddTaskRequest` was `not nullable`.
- **Updated**: The `start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

113. Change `AddTaskRequest assignee_id` to nullable
- **Original**: The `assignee_id` field in `AddTaskRequest` was `not nullable`.
- **Updated**: The `assignee_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

114. Change `GetProjectBoardsResponse additional_data` to nullable
- **Original**: The `additional_data` field in `GetProjectBoardsResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

115. Change `GetProductSearchResponseDataItem code` to nullable
- **Original**: The `code` field in `GetProductSearchResponseDataItem` was `not nullable`.
- **Updated**: The `code` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

116. Change `GetDealsProductsResponseDataPart4 billing_start_date` to nullable
- **Original**: The `billing_start_date` field in `GetDealsProductsResponseDataPart4` was `not nullable`.
- **Updated**: The `billing_start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

117. Change `UpdateStageRequest days_to_rotten` to nullable
- **Original**: The `days_to_rotten` field in `UpdateStageRequest` was `not nullable`.
- **Updated**: The `days_to_rotten` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

118. Change `ActivityItemLocation country` to nullable
- **Original**: The `country` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `country` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

119. Change `ActivityItemLocation route` to nullable
- **Original**: The `route` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `route` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

120. Change `ActivityItemLocation locality` to nullable
- **Original**: The `locality` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `locality` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

121. Change `ActivityItemLocation sublocality` to nullable
- **Original**: The `sublocality` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `sublocality` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

122. Change `ActivityItemLocation street_number` to nullable
- **Original**: The `street_number` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `street_number` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

123. Change `ActivityItemLocation admin_area_level_1` to nullable
- **Original**: The `admin_area_level_1` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `admin_area_level_1` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

124. Change `ActivityItemLocation admin_area_level_2` to nullable
- **Original**: The `admin_area_level_2` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `admin_area_level_2` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

125. Change `ActivityItemLocation postal_code` to nullable
- **Original**: The `postal_code` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `postal_code` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

126. Change `ActivityItemLocation subpremise` to nullable
- **Original**: The `subpremise` field in `ActivityItemLocation` was `not nullable`.
- **Updated**: The `subpremise` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

127. Change `GetProjectTemplateResponse additional_data` to nullable
- **Original**: The `additional_data` field in `GetProjectTemplateResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

128. Change `DeleteProjectFieldResponseData subfields` to nullable
- **Original**: The `subfields` field in `DeleteProjectFieldResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

129. Change `DeleteProjectFieldResponseData options` to nullable
- **Original**: The `options` field in `DeleteProjectFieldResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

130. Change `GetDealsProductsResponseDataPart3 billing_frequency_cycles` to nullable
- **Original**: The `billing_frequency_cycles` field in `GetDealsProductsResponseDataPart3` was `not nullable`.
- **Updated**: The `billing_frequency_cycles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

131. Change `UpdateDealRequest archive_time` to nullable
- **Original**: The `archive_time` field in `UpdateDealRequest` was `not nullable`.
- **Updated**: The `archive_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

132. Change `UpdateDealRequest org_id` to nullable
- **Original**: The `org_id` field in `UpdateDealRequest` was `not nullable`.
- **Updated**: The `org_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

133. Change `UpdateDealRequest person_id` to nullable
- **Original**: The `person_id` field in `UpdateDealRequest` was `not nullable`.
- **Updated**: The `person_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

134. Change `DeleteTaskResponse additional_data` to nullable
- **Original**: The `additional_data` field in `DeleteTaskResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

135. Change `GetDealsProductsResponseDataPart1 order_nr` to nullable
- **Original**: The `order_nr` field in `GetDealsProductsResponseDataPart1` was `not nullable`.
- **Updated**: The `order_nr` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

136. Change `GetDealsProductsResponseDataPart1 product_variation_id` to nullable
- **Original**: The `product_variation_id` field in `GetDealsProductsResponseDataPart1` was `not nullable`.
- **Updated**: The `product_variation_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

137. Change `GetDealFieldsResponseData subfields` to nullable
- **Original**: The `subfields` field in `GetDealFieldsResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

138. Change `GetDealFieldsResponseData options` to nullable
- **Original**: The `options` field in `GetDealFieldsResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

139. Change `UpdateDealFieldRequest description` to nullable
- **Original**: The `description` field in `UpdateDealFieldRequest` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

140. Change `GetActivityFieldsResponseData subfields` to nullable
- **Original**: The `subfields` field in `GetActivityFieldsResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

141. Change `GetActivityFieldsResponseData options` to nullable
- **Original**: The `options` field in `GetActivityFieldsResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

142. Change `AddDealProductRequest1Part4 product_variation_id` to nullable
- **Original**: The `product_variation_id` field in `AddDealProductRequest1Part4` was `not nullable`.
- **Updated**: The `product_variation_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

143. Change `AddDealRequest archive_time` to nullable
- **Original**: The `archive_time` field in `AddDealRequest` was `not nullable`.
- **Updated**: The `archive_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

144. Change `AddDealRequest org_id` to nullable
- **Original**: The `org_id` field in `AddDealRequest` was `not nullable`.
- **Updated**: The `org_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

145. Change `AddDealRequest person_id` to nullable
- **Original**: The `person_id` field in `AddDealRequest` was `not nullable`.
- **Updated**: The `person_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

146. Change `UpdateDealProductRequestPart1 product_variation_id` to nullable
- **Original**: The `product_variation_id` field in `UpdateDealProductRequestPart1` was `not nullable`.
- **Updated**: The `product_variation_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

147. Change `GetDealsProductsResponseAdditionalData next_cursor` to nullable
- **Original**: The `next_cursor` field in `GetDealsProductsResponseAdditionalData` was `not nullable`.
- **Updated**: The `next_cursor` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

148. Change `GetActivityFieldsResponseOptions update_time` to nullable
- **Original**: The `update_time` field in `GetActivityFieldsResponseOptions` was `not nullable`.
- **Updated**: The `update_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

149. Change `GetActivityFieldsResponseOptions color` to nullable
- **Original**: The `color` field in `GetActivityFieldsResponseOptions` was `not nullable`.
- **Updated**: The `color` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

150. Change `GetActivityFieldsResponseOptions add_time` to nullable
- **Original**: The `add_time` field in `GetActivityFieldsResponseOptions` was `not nullable`.
- **Updated**: The `add_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

151. Change `GetProjectFieldsResponseData subfields` to nullable
- **Original**: The `subfields` field in `GetProjectFieldsResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

152. Change `GetProjectFieldsResponseData options` to nullable
- **Original**: The `options` field in `GetProjectFieldsResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

153. Change `AddManyDealProductResponseDataPart4 billing_start_date` to nullable
- **Original**: The `billing_start_date` field in `AddManyDealProductResponseDataPart4` was `not nullable`.
- **Updated**: The `billing_start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

154. Change `UpdateDealProductRequestPart3 billing_frequency_cycles` to nullable
- **Original**: The `billing_frequency_cycles` field in `UpdateDealProductRequestPart3` was `not nullable`.
- **Updated**: The `billing_frequency_cycles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

155. Change `GetPersonFieldsResponseData subfields` to nullable
- **Original**: The `subfields` field in `GetPersonFieldsResponseData` was `not nullable`.
- **Updated**: The `subfields` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

156. Change `GetPersonFieldsResponseData options` to nullable
- **Original**: The `options` field in `GetPersonFieldsResponseData` was `not nullable`.
- **Updated**: The `options` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

157. Change `AddDealProductRequest1Part2 billing_frequency_cycles` to nullable
- **Original**: The `billing_frequency_cycles` field in `AddDealProductRequest1Part2` was `not nullable`.
- **Updated**: The `billing_frequency_cycles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

158. Change `GetActivitiesResponseAdditionalData next_cursor` to nullable
- **Original**: The `next_cursor` field in `GetActivitiesResponseAdditionalData` was `not nullable`.
- **Updated**: The `next_cursor` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

159. Change `GetDealsResponseData channel` to nullable
- **Original**: The `channel` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `channel` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

160. Change `GetDealsResponseData origin_id` to nullable
- **Original**: The `origin_id` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `origin_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

161. Change `GetDealsResponseData source_lead_id` to nullable
- **Original**: The `source_lead_id` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `source_lead_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

162. Change `GetDealsResponseData update_time` to nullable
- **Original**: The `update_time` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `update_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

163. Change `GetDealsResponseData acv` to nullable
- **Original**: The `acv` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `acv` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

164. Change `GetDealsResponseData lost_time` to nullable
- **Original**: The `lost_time` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `lost_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

165. Change `GetDealsResponseData person_id` to nullable
- **Original**: The `person_id` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `person_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

166. Change `GetDealsResponseData arr` to nullable
- **Original**: The `arr` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `arr` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

167. Change `GetDealsResponseData expected_close_date` to nullable
- **Original**: The `expected_close_date` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `expected_close_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

168. Change `GetDealsResponseData probability` to nullable
- **Original**: The `probability` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `probability` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

169. Change `GetDealsResponseData close_time` to nullable
- **Original**: The `close_time` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `close_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

170. Change `GetDealsResponseData mrr` to nullable
- **Original**: The `mrr` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `mrr` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

171. Change `GetDealsResponseData lost_reason` to nullable
- **Original**: The `lost_reason` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `lost_reason` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

172. Change `GetDealsResponseData won_time` to nullable
- **Original**: The `won_time` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `won_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

173. Change `GetDealsResponseData org_id` to nullable
- **Original**: The `org_id` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `org_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

174. Change `GetDealsResponseData stage_change_time` to nullable
- **Original**: The `stage_change_time` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `stage_change_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

175. Change `GetDealsResponseData channel_id` to nullable
- **Original**: The `channel_id` field in `GetDealsResponseData` was `not nullable`.
- **Updated**: The `channel_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

176. Change `AddConvertLeadToDealResponse additional_data` to nullable
- **Original**: The `additional_data` field in `AddConvertLeadToDealResponse` was `not nullable`.
- **Updated**: The `additional_data` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

177. Change `GetProjectSearchResponseDataItem end_date` to nullable
- **Original**: The `end_date` field in `GetProjectSearchResponseDataItem` was `not nullable`.
- **Updated**: The `end_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

178. Change `GetProjectSearchResponseDataItem description` to nullable
- **Original**: The `description` field in `GetProjectSearchResponseDataItem` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

179. Change `GetProjectSearchResponseDataItem board_id` to nullable
- **Original**: The `board_id` field in `GetProjectSearchResponseDataItem` was `not nullable`.
- **Updated**: The `board_id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

180. Change `GetProjectSearchResponseDataItem status` to nullable
- **Original**: The `status` field in `GetProjectSearchResponseDataItem` was `not nullable`.
- **Updated**: The `status` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

181. Change `AddProductRequestPart3 billing_frequency_cycles` to nullable
- **Original**: The `billing_frequency_cycles` field in `AddProductRequestPart3` was `not nullable`.
- **Updated**: The `billing_frequency_cycles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

182. Change `UpdateDealProductRequestPart4 billing_start_date` to nullable
- **Original**: The `billing_start_date` field in `UpdateDealProductRequestPart4` was `not nullable`.
- **Updated**: The `billing_start_date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

183. Change `StageItem update_time` to nullable
- **Original**: The `update_time` field in `StageItem` was `not nullable`.
- **Updated**: The `update_time` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

184. Change `StageItem days_to_rotten` to nullable
- **Original**: The `days_to_rotten` field in `StageItem` was `not nullable`.
- **Updated**: The `days_to_rotten` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

185. Rename operations to follow the connector naming conventions
- **Original**: `postAdditionalDiscount`, `postInstallment`, `getProjectsBoards`, `getProjectsBoard`, `getProjectsPhases` and `getProjectsPhase`.
- **Updated**: `addAdditionalDiscount`, `addInstallment`, `getProjectBoards`, `getProjectBoard`, `getProjectPhases` and `getProjectPhase`.
- **Reason**: Operation names must not start with an HTTP verb (`post*`) and must use the singular entity name, consistent with the other `add*` and `get*` operations. The decisions are persisted in `ai-mappings.json`.

186. Rename generated schemas to descriptive names
- **Original**: Schemas created by flatten and align, such as `InlineResponse2003`, `BaseResponse12`, `DealsBody`, `DealsidBody`, `DataAllOf1` and `GetDealsResponseBaseResponse22`.
- **Updated**: Names derived from the operation or parent schema that uses them, such as `DealFieldResponse`, `GetProductSearchResponseBase`, `AddDealRequest`, `UpdateDealRequest`, `GetDealsProductsResponseDataPart1` and `GetDealsResponseContent`.
- **Reason**: The generated names carry no meaning and expose numbering artifacts in the public API. The decisions are persisted in `ai-mappings.json`; delete that file and regenerate only if the whole naming is to be redone.

187. Rewrite generic success descriptions on the search operations
- **Original**: The `200` responses of `searchDeals`, `searchProducts`, `searchLeads`, `searchOrganization`, `searchPersons`, `searchItem`, `searchItemByField` and `searchProjects` were described only as `Success`.
- **Updated**: Each response describes what is returned, for example `Search results for deals`. Applied to the original `docs/spec/openapi.yaml` (`/deals/search`, `/products/search`, `/leads/search`, `/organizations/search`, `/persons/search`, `/itemSearch`, `/itemSearch/field`, `/projects/search`).
- **Reason**: A bare `Success` is not a useful description for a typed response body.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --license docs/license.txt --client-methods remote
```

Note: The license year is hardcoded to 2026, change if necessary.
