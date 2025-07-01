import 'package:injectable/injectable.dart';

const developmentName = 'dev';
const stagingName = 'staging';
const productionName = 'production';

const environmentDevelopment = Environment(developmentName);
const environmentStaging = Environment(stagingName);
const environmentProduction = Environment(productionName);
