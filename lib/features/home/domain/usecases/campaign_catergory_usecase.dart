import 'package:dartz/dartz.dart';
import 'package:defifundr_mobile/core/network/api_error.dart';
import 'package:defifundr_mobile/core/usecases/usecases.dart';
import 'package:defifundr_mobile/features/home/domain/entities/campaign_categories_entity/campaign_category_entities.dart';
import 'package:defifundr_mobile/features/home/domain/repositories/campaign_repository.dart';

class CampaignCategoryUseCase implements UseCase<CampaignCategories, NoParams> {
  final CampaignRepository campaignRepository;

  CampaignCategoryUseCase(this.campaignRepository);

  @override
  Future<Either<ApiError, CampaignCategories>> call(NoParams params) async {
    return await campaignRepository.getCategories();
  }
}
